#!/usr/bin/perl

if(!($_ = shift)=~/\w/){ print "please input a file\n";exit();}
@lines = `cat $_`;
for $i(0 .. $#lines){
	$_=$lines[$i];chomp;s/\w//g;defined($1) or continue;
	$o=`curl -sL -D - $_ -o /dev/null`;
	$url=`echo "$o"| grep Location| tail -n 1 |cut -d' ' -f2` or $url =$_;$url=~ s/\s$//g;
	$status=` echo "$o" |grep HTTP | tail -n 1 |  cut -d' ' -f2 ` or $status="000";$status =~ s/\s$//g;
	print $i+1 .";$status;$_;$url\n";
	}
