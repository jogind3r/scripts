#!/usr/bin/perl

shift;`curl$_`;
print;



# for file in $(curl -s http://www.ime.usp.br/~coelho/mac0122-2013/ep2/esqueleto/ |
#                   grep href |
#                   sed 's/.*href="//' |
#                   sed 's/".*//' |
#                   grep '^[a-zA-Z].*'); do
#     curl -s -O http://www.ime.usp.br/~coelho/mac0122-2013/ep2/esqueleto/$file
# done
