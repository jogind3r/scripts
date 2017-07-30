<b>URL_Status_Checker</b>

this script takes URLs as input from std input and gives out the status of every URL.


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

test:

curl -s https://raw.githubusercontent.com/jogind3r/scripts/master/sample.txt | python -c "$(curl -s https://raw.githubusercontent.com/jogind3r/scripts/master/url_status.py)"

output:

working...

403:https://img1.wsimg.com/Sitecore/E/

200:https://www.apple.com

404:https://github.com/url_does_not_exist

404:https://www.apple.com/images

200:https://www.microsoft.com

200:https://google.com

200:https://apple.com

--------------
