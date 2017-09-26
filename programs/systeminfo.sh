#!/bin/bash
source prompt.sh
echo "Enter the option from 1-13 to get the particular information:
1. Currently logged user
2. Your shell directory
3. Home directory
4. OS name and version
5. Current working directory
6. Number of users logged in
7. Show all available shells in your system
8. Hard disk information
9. CPU information
10. Memory information
11. file system information
12. Currently running process"

echo -n "Choice: " ; read option

case $option in
	1) # prints the names of the users currently logged in to the current host without showing any information about source, login time, or any other relevant information 
	   echo "currently logged user:";users; ;;
	   
	2) #gives shell name relative to root
	   echo "Your shell directory: $SHELL"
	   ;;
	3) echo "Home directory: $HOME"
	   ;;
	4) echo -n "operating system name is:  "; uname -s ; #uname
  	   echo -n "operating system version is:  "; uname -v
	   echo -n "operating system release is:  "; uname -r
        #echo -n network hostname: ; uname -n
	   #echo -n hardware name: ; uname -m
     	   ;; 
	5) echo "Current working directory: $PWD"
   	   ;;
	6) echo -n "Number of users logged in is: "
   	  # who -u | wc -l
	   who -q
	   ;;
	7) cat /etc/shells | grep -v "#"
	   ;;
	8) echo "Hard disk information:";fdisk

       
	    
	   ;; 
	9) echo "CPU information:"
        
        echo "Chip Brand – Processor Type and Chip Model – CPU Speed";lscpu
	   ;;
	10)echo "Memory information:";df

        #cat /proc/meminfo
	   ;;
	11)echo "file system information:"
	   df -H
	   #fdisk -1 ; mount
	   ;;
	12)echo "Currently running process:"
	   ps
 	   #gives currently running process dynamically
	   #top 
	   ;; 
	*)echo "Invalid option:"
	   ;;
esac
promptuser systeminfo.sh
