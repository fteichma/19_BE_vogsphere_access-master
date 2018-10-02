# s19 BE Remote Vogsphere Access Setup - Only Works On School Wifi : => s19 <=
##Setup Kerberos &amp; Git access to s19 BE

To setup access to your git repos on vogsphere, (only works on LInux / OSX)

####Clone this repo

####Run the shell script 
	
	sudo sh run.sh

(Enter system password if you need sudo previleges)

####Get your kerberos ticket

	kinit YOUR_LOGIN_HERE

####Enter your s19 password when asked to successfull authenticate.

####Clone/Push/Pull from all the Vogsphere Git repos you have access to. 

####To close your connection :

    kdestroy


### You can now access your vogsphere outside the s19 clusters

source : https://github.com/colundrum/42_vogsphere_access (modified version)
