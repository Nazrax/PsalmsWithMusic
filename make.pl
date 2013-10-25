#!/usr/bin/perl

use strict;
use warnings;

use File::Path qw/make_path/;
use File::stat;

make_path("pdfs");

opendir DH, "." or die;
my @entries = readdir DH;
closedir DH;

foreach my $entry (@entries) {
 next unless $entry =~ /\.ly$/;

 my $dest = "pdfs/$entry";
 $dest =~ s/\.ly$//;

 my $wantpdf = 0;
 if (! -e "${dest}.pdf" ) {
   $wantpdf = 1;
 } else {
   open IH, "$entry" or die;
   my @tostat = ($entry);
   while (<IH>) {
     if (/\\include \s+ ["']([^'"]+)["']/x) {
       push @tostat, $1;
     }
   }
   close IH;

   my $deststat = stat("${dest}.pdf");
   foreach my $tostat (@tostat) {
     my $stat = stat($tostat);

     if ($stat->mtime > $deststat->mtime) {
       $wantpdf = 1;
       last;
     }
   }
 }

 if ($wantpdf) {
   system("lilypond", "-o", $dest, $entry);
 }
}
