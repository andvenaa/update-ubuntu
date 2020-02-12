#!/bin/bash
TEXT_RESET='\e[0m'
TEXT_YELLOW='\e[0;33m'
TEXT_RED_B='\e[1;31m'
check_exit_status() {
 if [ $? -eq 0 ]
 then
  echo -e $TEXT_YELLOW
  echo
  echo "$@ Success"
  echo
  echo -e $TEXT_RESET
 else
 echo -e $TEXT_RED_B
  echo
  echo "$@ [ERROR] Process Failed!"
  echo
  read -p "The last command exited with an error. Exit script? (yes/no) " answer
            if [ "$answer" == "yes" ]
            then
                exit 1
            fi
   echo -e $TEXT_RESET
 fi
}
greeting() {
 echo
 echo "Hello, $USER. Let's update this system."
 echo
}
update() {
        sudo apt-get update;
 check_exit_status "APT update"
        sudo apt-get upgrade -y;
 check_exit_status "APT upgrade"
#        sudo apt-get dist-upgrade -y;
# check_exit_status "APT distributive upgrade"
        sudo apt-get full-upgrade -y;
 check_exit_status "APT full upgrade"
}
housekeeping() {
 sudo apt-get autoremove -y;
 check_exit_status "APT Autoremove"
 sudo apt-get autoclean -y;
 check_exit_status "APT Autoclean"
# sudo updatedb;
# check_exit_status
}
leave() {
 echo
 echo "--------------------"
 echo "- Update Complete! -"
 echo "--------------------"
 echo
 exit
}
checkreboot() {
if [ -f /var/run/reboot-required ]; then
 echo -e $TEXT_RED_B
 echo
 echo "--------------------"
 echo "- Reboot required! -"
 echo "--------------------"
 echo -e $TEXT_RESET
 echo
fi
}
greeting
update
housekeeping
checkreboot
leave
