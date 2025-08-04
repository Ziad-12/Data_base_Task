#!/bin/bash

create_db(){
clear
echo "1) Create DB"
echo "2) Create TB"
echo "3) Delete TB"
read num
case "$num" in
1) 
echo "Enter the name of Data Base: "
read db
if [ -d $db ];
then
	echo "This name is already existed !!"
	echo ""
else
	sudo mkdir $db

	echo "Data base is created successfully"
	sleep 2
	clear
fi
cd /home/ziad/ass
;;
2) create_tb 
   cd /home/ziad/ass;;
3) delete_table
   cd /home/ziad/ass;;
*) echo "Enter a valid choice , please !" ;;
esac

}
create_tb(){

clear
echo "Which DB: "
read indb
if [ -d $indb ];
then
cd $indb
echo "Enter the name of Table: "
read tb
	if [ -f $tb ];
	then
		echo "this table name is already exist"
		echo ""
	else
		sudo touch $tb
		echo "Table  is created successfully"
		sleep 2
		clear
	fi
else
echo "There is no such Data base !!"
echo ""
fi
}

delete_table(){

clear
echo "Which DB: "
read ndb
if [ -d $ndb ];
then
cd $ndb
echo "Enter the name of Table: "
read dtb
	if [ -f $dtb ];
	then
  		sudo rm $dtb
  		echo "Table is deleted successfully"
  		sleep 2
  		clear
	else 
  		echo "The Table is not in this data base!!"
	fi
else
echo "There is no such data base"
echo ""
fi
}


delete_db(){
clear
echo "Which Data Base do you want to delete: "
read ddb
if [ -d $ddb ];
then
	sudo rm -rf $ddb
	echo "Data base is deleted successfully"
	sleep 2
	clear
else
	echo "No such data base exist"
	echo ""
fi
}

list_db(){
clear
echo "Which Data Base do you want to list: "

read ldb
if [ -d $ldb ];
then
	if [ "$(ls -A "$ldb")" ];
	then
		
  		echo "The list of tables in $ldb"
  		echo ""
  		sudo ls $ldb
  		echo "" 
  
	else 
  		echo "This data base is empty !!"
  		echo ""
	fi
else
  echo "There is no such a data base"
fi  
}
exit_fun(){
clear
exit 0
}
clear
while true;

do


echo "1) Create data base"
echo "2) Delete data base"
echo "3) Exit"
echo "4) List tables into data base"


echo "***********************************"


echo "Enter your choice: "
read choice

case "$choice" in
	1)create_db 
	  cd /home/ziad/ass
	;;
	2)delete_db 
	  cd /home/ziad/ass
	;;
	3)exit_fun 
	  cd /home/ziad/ass
	;;
	4)list_db 
	  cd /home/ziad/ass
	;;
	*)echo "Enter a valid choice from list please !" ;;

esac

done 
