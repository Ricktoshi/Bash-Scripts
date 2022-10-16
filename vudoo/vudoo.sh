#!/bin/bash

######################################################################################
# *       Filename: vudoo.sh 
# *
# *    Description: Shell script written to ease the creation of a shell
# *                 script.
# *
# *        Version:  2.6
# *        Created:  26/04/2012
# *		
# *       Revision:  04/02/2013
# *		    
# *		     1.- Removed the touch and mv commands along with the creation of
# * 			 temp file for more eficient single line "cat $header > $1.sh"
# *			 at line 41. 
# *		     
# *		     2.- Added Check for null argumet in line 32. 
# *		
# *		     3.- Added chmod set from script argument by user.
# *		
# *		     4.- Added "sh", "pl" and "htm" id for creating bash, perl and 
# *			 "htm" or "html" scripts.
# *
# *		     06/02/13
# *			
# *		     5.- Added code to test if the file being created already exists.

# *         Author:  Ricktoshi, rick_navarro@protonmail.ch
# *        Company:  NavCom
# *
#######################################################################################

SH_header=~/Templates/headres/sh_header.txt
PL_header=~/Templates/headres//pl_header.txt
HTML_header=~/Templates/headres/htm_header.txt
script_name=$1

#The -z switch will test if the expansion of "$1" is a null string or not. If it is a
#null string then the body is executed.

# [  -z "$1" ] && {echo echo "Please enter the name of the shell script you wish to create"; exit 1 } 

if [  -z "$1" ]
   then
        echo "Please enter the name of the shell script you wish to create"
        exit 1

	elif [ -f $1 ]
	then
		echo " "
     		echo "Warning! File -- $1 -- already exists."
		echo " "
		exit 1
fi


if [[ "$1" == *.sh* ]]
	then
	cat $SH_header > $1

	elif [[ "$1" == *.pl* ]]
	then
	cat $PL_header > $1

		elif [[ "$1" == *.htm* ]]
		then
        	cat $HTML_header > $1

fi

# add code to accept a 2nd argument and if present change chmod to user specified value

if [  -z "$2" ]
  then 
	chmod 744 $1 
  else
        chmod $2 $1
fi

vim $1
 


