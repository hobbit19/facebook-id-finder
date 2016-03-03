# facebook-id-finder
Find the original numerical ID

Due to the reason that Facebook Graph API is nolonger support search by username  
https://developers.facebook.com/docs/apps/upgrading#upgrading_v2_0_graph_api
```
Removed endpoints
The /me/username field has been removed.
```
So we can't use `https://graph.facebook.com/' to find the numerical ID anymore.

Here's the solution for crawl the numerical ID from html source code.

## Usage  

Find the user ID via user name  
`./facebook-id-finder.sh zuck`  
Find the user ID via user url  
`./facebook-id-finder.sh https://www.facebook.com/zuck`  
Find the page ID vid page name  
`./facebook-id-finder.sh facebook`   
Find the page ID vid page url  
`./facebook-id-finder.sh https://www.facebook.com/facebook`   

## Example  
Find Mark Zuckerberg's numerical ID (which is 4)  
`./facebook-id-finder.sh zuck`  
Result:  
```sh
========== Facebook ID Finder ==========
Step1 Parse the name...
===> zuck
Step2 Find the id...
===> Finish
zuck<=>4
```
