#!/usr/bin/env bash


PASSWD="$(zenity --password --title=Authentication)\n"



function work-list () {

zenity --notification --text="Updating.."
echo "5"
sleep 1

echo -e "$PASSWD" | sudo -S apt-get -y update 
echo "25"
sleep 1


echo -e "$PASSWD" | sudo -S apt-get -y upgrade
echo "50"
sleep 1

echo -e "$PASSWD" | sudo -S apt-get -y upgrade
echo "75"
sleep 1

zenity --info 
echo "100"
sleep 1


}

work-list | zenity --progress --text="Update in Progress.." --title "Software Upgrader" --auto-close --auto-kill

exit 0
