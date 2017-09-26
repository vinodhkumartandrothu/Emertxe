#function promptuser
promptuser()
{
echo "do you want to continue [Y/N]"
read input
if [ $input = 'Y' ]
then 
 	filename=$0
	echo -e "(optional) enter the arguements"
	read arguements
	bash $filename $arguements
elif [ $input = 'N' ]
then 
	 exit 
else
	echo "Invalid input"
fi
}
