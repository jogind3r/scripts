<b>url_validator</b>

usage:
download the code and run as 
$ url_val.py < your_list_file.txt

or

$ cat your_list_file.txt | url_val.py

or 

$ some_stuff | url_val.py

!!input contains urls ,one on each line

or run as

python -c "$(curl -s https://raw.githubusercontent.com/jogind3r/scripts/master/url_val.py)" < your_list_file.txt

--------------
<b>url_validator_not200</b>

usage:
download the code and run as url_validator_not200.pl your_list_file.txt

!!list file contains urls ,one on each line

or run as

perl -e "$(curl -s https://raw.githubusercontent.com/jogind3r/scripts/master/url_validator_not200.pl)" your_list_file.txt
