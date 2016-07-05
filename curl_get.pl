#!/usr/bin/perl
use feature "say";

say "get me a url" and exit, if !($domain=shift);

@lines=`curl -L $domain`;

# @lol;

foreach(@lines) {
  @links=(@links,$1), if(/(<\s*link.*?\>)/g);
  @links=(@links,$1), if(/(src\s*=\s*\".*?\")/g);
}

say "@links";

foreach $str (@links) {
    @words = qw/dns-prefetch prefetch canonical/;
  if ( ! grep { $str =~ /$_/ } @words) {
    @new=(@new,$str);
  }
}

$"="\n";
print "@new";

foreach $x (@new) {
      if($x=~/src/g){
        if($x=~/\"(.*)\"/g){
          @lol=(@lol,$1);
        }
      }
      if (/link/) {
        $x=$_;
      if ($x=~/href\s*=\s*[\"\'](.*?)[\"\']/g) {
       @lol=(@lol,$1);
      }
      # say $_;
      }
}

foreach (@lol) {
  if (/\/\//) {
    s/^\/\///;
    # say;
    `curl -L $_`;
  }
  else{
    `curl -L "$domain$_"`
  }
}
