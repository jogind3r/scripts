<b>URL_Status_Checker</b>

usage:
download the code and run as 
$ url_status.py < your_list_file.txt

or

$ cat your_list_file.txt | url_status.py

or 

$ some_stuff | url_status.py

!!input contains urls ,one on each line

or run as

python -c "$(curl -s https://raw.githubusercontent.com/jogind3r/scripts/master/url_status.py)" < your_list_file.txt

--------------
<b>URL_Validator_Not200</b>

usage:
download the code and run as url_validator_not200.pl your_list_file.txt

!!list file contains urls ,one on each line

or run as

perl -e "$(curl -s https://raw.githubusercontent.com/jogind3r/scripts/master/url_validator_not200.pl)" your_list_file.txt
