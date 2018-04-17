#!/usr/bin/perl
use warnings;
open(file1,"<C:/Perl/number1.txt");
open(file2,">C:/Perl/number2.txt");
while(<file1>)
{
while($_ =~ m/([2-9]{1,1})([0-9]{2,2}).*([2-9]{1,1})([0-9]{2,2}).*([0-9]{4,4})/g)
  {    
     $var = $1.$2.$3.$4.$5;
     print file2 "$var,\n";
}
}
close(file1);
close(file2);
