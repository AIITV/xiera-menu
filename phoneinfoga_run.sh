#!/usr/bin/env bash

whiptail --title "Select typ" --yesno "Do you want to run in terminal or web-gui? yes=terminal no=web" 8 78 
if [[ $? -eq 0 ]]; then 
  phone=$(whiptail --inputbox "Pls enter the phonenumber" 8 78 Blue --title "Phonenumber" 3>&1 1>&2 2>&3)
                                                                        # A trick to swap stdout and stderr.
                    # Again, you can pack this inside if, but it seems really long for some 80-col terminal users.
        exitstatus=$?
            if [ $exitstatus = 0 ]; then
                docker run -it sundowndev/phoneinfoga scan -n "$phone"
            else
                echo "User selected Cancel."
            fi

            echo "(Exit status was $exitstatus)"
elif [[ $? -eq 1 ]]; then 
  docker run -it 8080:8080 sundowndev/phoneinfoga serve -p 8080
elif [[ $? -eq 255 ]]; then 
  whiptail --title "MESSAGE" --msgbox "User pressed ESC. Exiting the script" 8 78 
fi 




