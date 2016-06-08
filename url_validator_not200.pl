#!/usr/bin/perl

if(!($_ = shift)=~/\w/){ print "please input a file\n";exit();}
@lines = `cat $_`;
for $i(0 .. $#lines){
	$_=$lines[$i];chomp;
	$x="curl -s -D - $_ -o /dev/null";
	$o=`$x | head -n 1`;
	if( !($o=~/200/)){
		print $i+1 . ": $_ <> !200 found \n";
		}
	}
