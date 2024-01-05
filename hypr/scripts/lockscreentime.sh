#/bin/sh
#  ___    _ _      _   _                 
# |_ _|__| | | ___| |_(_)_ __ ___   ___  
#  | |/ _` | |/ _ \ __| | '_ ` _ \ / _ \ 
#  | | (_| | |  __/ |_| | | | | | |  __/ 
# |___\__,_|_|\___|\__|_|_| |_| |_|\___| 
#                                        
#  
# by Stephan Raabe (2023) 
# ----------------------------------------------------- 

timeswaylock=600
timeoff=660

if [ -f "/usr/bin/swayidle" ]; then
    echo "swayidle is installed."
    swayidle -w timeout $timeswaylock 'gtklock --idle-timeout ${timeoff}'
else
    echo "swayidle not installed."
fi;
