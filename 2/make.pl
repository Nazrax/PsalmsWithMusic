#!/usr/bin/perl

use strict;
use warnings;

use Data::Dumper;
use File::stat;

my %songs;
opendir DH, 'lyrics' or die;
foreach my $entry (readdir DH) {
 next if $entry =~ /^\./;
 next unless $entry =~ /\.txt$/;

 $entry =~ s/.txt$//;
 $songs{$entry} = {};
 $songs{$entry}{mtime} = stat("lyrics/$entry.txt")->mtime;
}
closedir DH;

my %tunes;
opendir DH, 'tunes' or die;
foreach my $entry (readdir DH) {
 next if $entry =~ /^\./;
 next unless $entry =~ /\.txt/;
 $entry =~ s/.txt$//;
 $tunes{$entry} = {};
}

foreach my $tune (sort keys %tunes) {
 my $r = $tunes{$tune};
 $r->{notes} = {};

 $tunes{$tune}{mtime} = stat("tunes/$tune.txt")->mtime;
 open IH, "tunes/$tune.txt" or die "Unable to open 'tunes/$tune.txt': $!\n";
 while (<IH>) {
  if (/(\w+): \s* (.*)/x) {
   $r->{lc($1)} = $2;
  } else {
   print STDERR "Invalid line '$_' in 'tunes/$tune.txt'\n";
  }
 }
 close IH;

 if (!defined $r->{key} || !defined $r->{time}) {
  die "$tune is missing key or time\n";
 }
 
 foreach my $part (qw/soprano alto tenor bass/) {
  my $path = "tunes/$part/$tune.txt";
  if (-e $path) {
   my $mtime = stat($path)->mtime;
   $tunes{$tune}{mtime} = $mtime if ($mtime > $tunes{$tune}{mtime});
   my $notes = '';
   open IH, $path or die "Unable to open $path: $!\n";
   while (<IH>) { 
    chomp;
    s/#.*$//;
    next if /^\s*$/;
    $notes .= $_ . " \\bar \"|\" \\break\n";
   }
   close IH;
   $r->{notes}{$part} = $notes;
  }
 }
}

foreach my $song (sort keys %songs) {
 my $r = $songs{$song};
 $r->{verses} = []; 

 open IH, "lyrics/$song.txt" or die "Unable to open 'lyrics/$song.txt': $!\n";
 my $inLyrics = 0;
 my $verse = '';

 while (<IH>) {
  chomp;
  if ($inLyrics) {  
   if (/^\s*$/) {
    push @{$r->{verses}}, $verse unless ($verse =~ /^\s*$/s);
    $verse = '';
   } else {
    #s/(?:^|\W)(\d+)\_([^\s]+)/\\markup { \\super $1 $2 }/g;
    s/(\d+)\_([^\s]+)/\\markup { \\super $1 $2 }/g;
    s/([^\s]*)LORD([^\s]*)/\\markup { \\caps $1Lord$2 }/g;
    s/([^\s]*)GOD([^\s]*)/\\markup { \\caps $1God$2 }/g;
    $verse .= "$_\n";
   }
  } else { 
   if (/^\s*$/) {
    $inLyrics = 1;
   } elsif (/(\w+): \s* (.*)/x) {
    $r->{lc($1)} = $2;
   } else {
    print STDERR "$song: Invalid line '$_'\n";
   }
  }
 }
 push @{$r->{verses}}, $verse unless ($verse =~ /^\s*$/s);

 if (!defined $r->{tune} || !defined $r->{name}) {
  die "$song is missing either tune or name\n";
 }
}

our %CLEFS = (soprano => 'treble', alto => 'treble', tenor => 'bass', bass => 'bass');
our %TRANSPOSES = (soprano => "c'", alto => "c'", tenor => 'c', bass => 'c');

our @COMBOS = (
 {name => 's',  parts => [['soprano'], []]},
 {name => 'a',  parts => [['alto'], []]},
 {name => 't',  parts => [[], ['tenor']]},
 {name => 'b',  parts => [[], ['bass']]},
 {name => 'sa', parts => [['soprano', 'alto'], []]},
 {name => 'tb', parts => [[], ['tenor', 'bass']]},
 {name => 'satb', parts => [['soprano', 'alto'], ['tenor', 'bass']]}
);

our %PARTS = (
 s => 'Soprano',
 a => 'Alto',
 t => 'Tenor',
 b => 'Bass',
 sa => 'Soprano + Alto',
 tb => 'Tenor + Bass',
 satb => undef
);

foreach my $song (sort keys %songs) {
 my %s = %{$songs{$song}};

 if (!defined $tunes{$s{tune}}) {
  die "$song: can't find tune '$s{tune}'\n";
 }
 my %t = %{$tunes{$s{tune}}};

 open OH, '>', "/tmp/$song.ly" or die;
 select OH;
 print <<EOF;
\\version "2.14.2"
\\language "english"
\\paper {
 #(set-paper-size "letter")
 indent = 0\\cm
}

\\pointAndClickOff

EOF

 my $partial = '';
 $partial = "\\partial $t{partial}" if (defined $t{partial});
 foreach my $part (sort keys %{$t{notes}}) {
  print "$part = \\transpose c $TRANSPOSES{$part} { \\clef $CLEFS{$part} $partial $t{notes}{$part} }\n";
 }
 for(my $i=0, my $v='A'; $i < @{$s{verses}}; $i++, $v++) {
  print "verse$v = \\lyricmode {\n";
  print "\\set stanza = #\"" . ($i + 1) . ".\" \n"; 
  print $s{verses}[$i];
  print "}\n";
 }

 COMBO: foreach my $combo (@COMBOS) {
  my (@parts, @partcombine, $firstPart);
  my $i=0;
  foreach my $staff (@{$combo->{parts}}) {
   $parts[$i] = [];
   foreach my $part (@$staff) {
    next COMBO if (!defined $t{notes}{$part});
    push @{$parts[$i]}, "\\$part";
    $firstPart = $part if !defined $firstPart;
   }
   $i++;
  }

  my ($upperParts, $lowerParts, $upperPartCombine, $lowerPartCombine);
  if (! @{$parts[0]}) {
   $upperParts = join(' ', @{$parts[1]});
   $upperPartCombine = (@{$parts[1]} > 1) ? "\\partcombine" : '';
  } else {
   $upperParts = join(' ', @{$parts[0]});
   $lowerParts = join(' ', @{$parts[1]});
   $upperPartCombine = (@{$parts[0]} > 1) ? "\\partcombine" : '';
   $lowerPartCombine = (@{$parts[1]} > 1) ? "\\partcombine" : '';
  }

  my $prettyname = $s{name};
  if (defined $PARTS{$combo->{name}}) {
   $prettyname .= " (" . $PARTS{$combo->{name}} . ")";
  }
 
  print <<EOF;
\\book {

 \\header {
  title = \\markup \\center-column { \"$prettyname\" }
  tagline = \"\"
 }
 \\bookOutputSuffix \"@{[$combo->{name}]}\"
 \\score {
  <<
   \\new Staff <<
    \\set Staff.printPartCombineTexts = ##f\n
    \\key $t{key}
    \\time $t{time}
    \\numericTimeSignature
EOF
  if (defined $t{flags}) {
   foreach my $flag (split /\s+/, $t{flags}) {
    print "   $flag\n";
   }
  }
  print "\n";
print <<EOF;
    \\new Voice { $upperPartCombine $upperParts }
    \\new Voice = \"lyricvoice\" { \\override Slur #'transparent = ##t \\override Tie #'transparent = ##t \\override NoteColumn #'ignore-collision = ##t \\hideNotes \\$firstPart }
   >>
EOF

  for(my $i=0, my $v='A'; $i < @{$s{verses}}; $i++, $v++) {
   print "   \\new Lyrics \\lyricsto \"lyricvoice\" \\verse$v\n";
  }

  if (defined $lowerParts && $lowerParts ne '') {
   print "    \\new Staff {\n";
   print "    \\key $t{key}\n";
   print "     \\time $t{time}\n";
   print "     \\numericTimeSignature\n";
   print "     \\set Staff.printPartCombineTexts = ##f\n";
   print "     \\new Voice { $lowerPartCombine $lowerParts }\n";
   print "    }\n";
  }

  print "  >>\n";
  print "  \\layout {\n";
  print "   \\context {\n";
  print "    \\Score \\remove \"Bar_number_engraver\"\n";
  print "   }\n";
  print "  }\n";
  print "  \\midi {\n";
  print "   \\context {\n";
  print "    \\Staff\n";
  print "    \\remove \"Staff_performer\"\n";
  print "   }\n";
  print "   \\context {\n";
  print "    \\Voice\n";
  print "    \\consists \"Staff_performer\"\n";
  print "   }\n";
#  print "   \\tempo 2 = 150\n";
  print "  }\n";
  print " }\n";
  print "}\n";

 }
 close OH;
}
