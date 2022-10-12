#!/bin/bash

######################################################################################
# *       Filename: vudu.sh  
# *
# *    Description: Shell script written to ease the creation of a shell
# *                 script.
# *
# *        Version:  2.0
# *        Created:  26/04/2012
# *		
# *       Revision:  14/01/2013
# *		    
# *		     1.- Removed the touch and mv commands along with the creation of
# * 			 temp file for more eficient single line "cat $header > $1.sh"
# *			 at line 41. 
# *		     
# *		     2.- Added Check for null argumet in line 32. 
# *		
# *		     3.- Added chmod set from script argument by user.
# *
# *         Author:  Ricktoshi, enrique_nav@hotmail.com
# *        Company:  NavCom
# *
#######################################################################################

Header=~/Template/headers/sh_header.txt

script_name=$1

#The -z switch will test if the expansion of "$1" is a null string or not. If it is a
#null string then the body is executed.

# [  -z "$1" ] && {echo echo "Please enter the name of the shell script you wish to create"; exit 1 } 

if [  -z "$1" ]
   then
        echo "Please enter the name of the shell script you wish to create"
        exit 1
  else
	cat $Header > $1.sh
fi

# add code to accept a 2nd argument and if present change chmod to user specified value

if [  -z "$2" ]
  then 
	chmod 744 $1.sh 
  else
        chmod $2 $1.sh
fi

vim $1.sh
 


