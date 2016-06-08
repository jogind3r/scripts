#!/usr/bin/perl

if(!($_ = shift)=~/\w/){ print "please input a file\n";exit();}
@lines = `cat $_`;
for $i(0 .. $#lines){
	$_=$lines[$i];chomp;
	$x="curl -sL -D - $_ -o /dev/null";
	$o=`$x |grep HTTP | tail -n 1`;
	if( ($o=~/200/g)){
		}
    else{
        print $i+1 . ": $_ <> !200 found \n";
    }
	}
