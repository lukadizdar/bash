#! /bin/bash
read -p "Type S for Suspend and H for Hibernate: " action
sleep 3600
if [ "$action" == "S" ]; then
    sudo systemctl suspend
elif [ "$action" == "H" ]; then
    sudo systemctl hibernate
else    
    echo "You did not press S or H. Exiting program"
    exit 1
fi
