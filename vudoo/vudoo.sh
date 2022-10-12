#!/bin/bash

######################################################################
# *       Filename: vudoo.sh  
# *
# *    Description: Shell script written to ease the creation of a shell
# *                 script.
# *
# *        Version:  1.0
# *        Created:  26/04/2012
# *       Revision:  none
# *
# *         Author:  Ricktoshi, enrique_nav@hotmail.com
# *        Company:  NavCom
# *
#######################################################################

Header=~/Templates/headers/sh_header.txt
script_name=$1

#[ $# -eq "" ] && {echo "Please enter a the name of the shell script you wish to create"; exit 1}

 touch $1.sh
 cat $Header $1.sh > $file.temp
 mv $file.temp $1.sh

# add code to accept a 2nd argument and if present change chmod to user specified value
 chmod 744 $1.sh

vim $1.sh
 


