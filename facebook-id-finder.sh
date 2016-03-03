#!/bin/sh
# Author: gyzheng
# Mail: gyzheng@cs.nctu.edu.tw
# Usage: ./facebook-id-finder.sh <url or username>

echo "========== FB name2id Tool =========="
url="https://www.facebook.com/"
echo "Step1 Parse your username..."
username=`echo $1 | cut -d '/' -f 4`
echo "===> "$username
echo "Step2 Find your id..."
raw=`curl $url'/'$username 2>/dev/null | sed -e 's/}/\n/g; s/\"//g' | grep 'entity_id:[0-9]*' | cut -d ':' -f 3`
if [ -z "$raw" ]; then
    echo "Wrong username! Please re-try!"
else
    echo "===> Finish"
    echo $username"<=>"$raw
fi
