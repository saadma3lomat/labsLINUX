#!/data/data/com.termux/files/usr/bin/bash

# Copyright 2022 computer-saadnj. All rights reserved.

########################################################
#### Distro with this script : Termux ##### saad nj ####
########################################################
#### Usage... : bash linux.sh ####
##################################
clear

# Add some colours
red='\e[1;31m' green='\e[1;32m' blue='\e[1;34m'  cyan='\e[1;36m' white='\e[1;37m' yellow='\e[1;33m' ncolor="\033[0m" reed="\033[0;31m" greenn="\033[0;32m" BBlack='\e[1;30m'

# General vars
nam='of' ar=('.  ' '.. ' '...' '   ') arr=('-' '\' '|' '/') arria=('saad nj' 'Saad nj' 'sAad nj' 'saAd nj' 'saaD nj' 'saad Nj' 'saad nJ') ver=$((`date +%m|cut -c2-2`-2))
main="run-kali" files="/data/data/com.termux/files/" hoME=$(pwd) bg=0 col='\e[1;32m' blog='found' folder="${files}usr/etc/Kali-Linux/" v2="${folder}.v" varr=".chick" fold=`pwd|cut -d '/' -f7`

##function Make sure the internet is connected
function ConX () {
command -v wget &> /dev/null
if [ $? -ne 0 ];then
	pkg install wget -y &> /dev/null
fi
wget -q --spider https://www.google.com
if [ $? -eq "0" ]; then
	printf "\n[-] internet status: [connected ! :) ]\n\n"
else
	printf "\n[-] internet status: [ ${red}not connected$yellow ! ${red}:( ${white}]\n[${red}!${white}] error: your not connected to internet ${red}!!!${ncolor} \n\nMake sure your internet connection is working${white}\n**************** [ ${red}Exiting ${white}] ****************\n"
	exit 1
fi
}

# function Find tools
function funtool () {
command -v $tool &> /dev/null
if [ $? -eq 0 ];then
	fon="found"
else
	fon="not-found"
fi
}

# function install tools
function fun2 () {
t=0
for n in "wget        " "dpkg        " "proot       " "tar         ";do
	tool=$n ;funtool
	sleep .5
	if [ $fon == "$blog" ];then
		t=$((t+1))
		echo -e "[ ${yellow}$n${white} ] : $col$fon${white}"
		prog=$n
		if [ $nam == "on" ];then
			printf "installing tools ! \nPlease Be Patient ...\n\n[i] $n is being installed  +++++++++++++++++\n" ; sleep 1
			ConX
			apt-get install $n -y
			if [ $? -ne 0 ];then
				ConX
				pkg install $n  -y
				if [ $? -eq 0 ];then
					echo "[i] Successfully done / completed :) " ; sleep 1
				else
					t=$((t-1))
				fi
			else
				echo "[i] Successfully done / completed :) " ; sleep 1
			fi
			echo
		fi
	fi
done
}

BAN () {
echo -e """${BBlack}
        #####
       #######
       ##${white}O${BBlack}#${white}O${BBlack}##
       #${yellow}#####${BBlack}#
     ##${white}##${yellow}###${white}##${BBlack}##
    #${white}##########${BBlack}##
   #${white}############${BBlack}##
   #${white}############${BBlack}###
  ##${BBlack}#${white}###########${BBlack}##${yellow}#
######${BBlack}#${white}#########${yellow}#####
#######${BBlack}#${white}#######${yellow}######
  #####${BBlack}#######${yellow}#####
"""
}

# info
echo "All the dependencies will be installed automatically when you run $0 for the first time." ;sleep 2;clear
BAN
sleep 1
printf "${white}Tool Name : ${green}kali${white}-${green}linux\n";sleep .5
printf "${white}distro    : ${green}Termux\n";sleep .5
printf "${white}Date      : ${green}25${white}/${green}03${white}/${green}2022\n";sleep .5
printf "${white}Version   : ${green}1${white}.${green}$ver\n";sleep .5
printf "${white}coded   by   ${green}saad nj";sleep .5;clear
BAN
printf "${white}Tool Name : ${green}kali${white}-${green}linux\n${white}distro    : ${green}Termux\n${white}Date      : ${green}25${white}/${green}03${white}/${green}2022\n${white}Version   : ${green}1${white}.${green}$ver\n"

## while arria : Name
while true; do
	for x in "${red}${arria[@]}"; do
		echo -en "\r${white}coded   by   ${green}$x ${white}"
		sleep .2
	done
	bg=$((bg+1))
	if [[ $bg -eq 5 ]];then bg=0
		clear;break
	fi
done
printf "${white}Welcome to ${blue}Kali-Linux${white} script v1.$ver \n---------------------------------\n\n";sleep .5
printf "${red}Please Whait${white}, The tools ${white}are being ${green}searching ${white}...  ";sleep .7
clear
printf "Welcome to ${blue}Kali-Linux${white} script v1.$ver \n---------------------------------\n\n"
while true; do
	for v in "${arr[@]}"; do
		echo -en "\r${red}Please Whait${white}, The tools ${white}are being ${green}searching ${white}...  $v "
		sleep .03
	done
	bg=$((bg+1))
	if [[ $bg -eq 30 ]];then
		bg=0
		clear
		printf "Welcome to ${blue}Kali-Linux${white} script v1.$ver \n---------------------------------\n\n${red}Please Whait${white}, The tools ${white}are being ${green}searching ${white}...  \n-----------------------------------------------\n\n"
		break
	fi
done

##  Script update
Update () {
while true; do
	for x in "${ar[@]}"; do
		echo -en "\r- Update script : checking $x "
		sleep .4
	done
	bg=$((bg+1))
	if [[ $bg -eq 5 ]];then
		echo -en "\r${white}- Update script : checking ${green}v1.$ver ${white}.\n---------------------------------\n\n";sleep 2
		break
	fi
done
if [ $hoME != `echo ~/$fold` ]; then
	mv $hoME ~/kaliLINUX
	cd ~/kaliLINUX
	fold=`pwd|cut -d '/' -f7`
	hoME=`pwd`
fi
if [ ! -f $v2 ];then
	echo 0 > $v2
fi
if [ $ver != $((`cat $v2`-2)) ];then
		cd ~
		mv $hoME ${files}/usr/tmp
		git clone https://github.com/saadma3lomat/kaliLINUX.git &> /dev/null
		if [ $? -eq 0 ];then
			if [ -d $hoME ];then
				rm -rf $v2 ${files}/usr/tmp/$fold
				cd $fold
				bash $0
			fi
		else
			mv /${files}/usr/tmp/$fold ~
			cd $fold
		fi
fi
echo `date +%m|cut -c2-2` > $v2
}

## work started
printf "${cyan}Let's check if you have installed script${white}\n\n";sleep 1
if [ -d ${folder}kali/usr/local/games -a -f ${files}usr/etc/$varr -a -f ${folder}$main ];then
	Update
	clear;bash
else
	if [ `uname -o` != Android ];then
		echo -e "The Script is only used in ${green}Termux ${white}!";sleep 1
		echo
		echo "Exiting $0 script v1.$ver - ! :(";sleep 1
		echo -e "reported by contacting us at [$cyan @SaadNj ${white}]"
		ConX
		echo "******** Exiting *********"
		firefox https://facebook.com/Information.5ection
	else
		if [ ! -d ${folder}kali ];then
			mkdir -p ${folder}kali
		fi
		if [ ! -f $v2 ];then
			echo `date +%m|cut -c2-2`
		fi
		Update
		printf "\n${cyan}[*] Checking package  dependencies\n\n${white}";sleep 1
		echo     "Essential tools: checking...";sleep 1.5
		echo "----------------------------"
		fun2
		if [ $t == 4 ];then
			printf "\nall tools installed\n------------------------\n\n";sleep 1
			echo "[i] Successfully done / completed :) " ; sleep 1.5
		else
			printf "\n\nsome tools not installed\n------------------------\n\nYou need to install some tools before running this script!\n\n"; sleep 1.5
			apt-get update   ##&& apt-get upgrade -y
			ConX
			nam='on' col='\e[1;31m' blog="not-found";fun2;echo
			if [ $t != 4 ];then
				blog="not-found";fun2
			fi
			sleep 1;clear
			col='\e[1;32m' nam='of' blog='found' ;fun2
			if [ $t == 4 ];then
				printf "\nall tools installed\n------------------------\n\n";sleep 1
				echo "[i] Successfully done / completed :) " ; sleep 1
			else
				printf "\some tools not installed\n------------------------\n\nYou need to install some tools before running this script!\n\n"; sleep 1.5
				col='\e[1;31m' blog="not-found";fun2
		  		echo
				echo "An error occurred while trying to install dependencies. Script can't continue due the lack of some essential tools"; sleep 1
				echo "The program $prog is not installed, Install it by executing :"; sleep 1
				echo pkg install $prog -y
				echo;echo "after running script again.  bash $0 "
				ConX
				echo "******** Exiting *********"
				termux-open https://facebook.com/Information.5ection
				echo;exit
			fi
		fi
	        if [ ! -d ${folder}kali/usr/local/games ];then
			# searching-for-architecture
			printf "\n${cyan}[*] Checking device architecture\n\n${white}"; sleep 1
			ArchE=$(dpkg --print-architecture)
			if [ $ArchE == "arm" ]; then
				ITecture="armhf"
			elif [ $ArchE == "x86_64" -o $ArchE == "amd64" ];then
				ITecture="amd64"
			elif [ $ArchE == "x86" -o  $ArchE == "i*86" ];then
				ITecture="i386"
			elif [ $ArchE == "aarch64" ];then
				ITecture="arm64"
			else
				echo "Unknown ITecture $ArchE ! "; sleep 1.5
				echo
				echo "Exiting $0 script v1.$ver - See you soon! :)"
				echo "reported by contacting us at [ @Saad Nj ]."
				ConX
				echo "******** Exiting *********"
				termux-open https://facebook.com/Information.5ection
				echo;exit 1
			fi
			echo -e "[ ${yellow}Arch-itecture${white} ] : $blue$ArchE$white > ${green}$ITecture${white}";sleep 1
			echo
			echo -e "[ ${yellow}Detecting system ${white}] : ${green}Termux${white}";sleep 1
			echo
			if [ -f ${hoME}/kali-rootfs.tar.xz ];then
				if [ `ls -l ${hoME}/kali-rootfs.tar.xz|cut -d ' ' -f5` -lt `echo $((7**9))` ];then
					rm ${hoME}/kali-rootfs.tar.xz
				fi
			fi
			if [ ! -f ${hoME}/kali-rootfs.tar.xz ];then
				echo -e "Download ${green}kali-rootfs${white},  Please Be Patient..."
		        	apt-get update &> /dev/null
		        	echo
				wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Rootfs/Kali/${ITecture}/kali-rootfs-${ITecture}.tar.xz -O kali-rootfs.tar.xz
			fi
		fi
		if [ $? -eq "0" ]; then
	            cd ${folder}
		    if [ ! -f $main ];then
			cat > $main <<- comm
			#!${files}usr/bin/bash

			clear
			if [ ! -f .v ];then
				echo $((`date +%m|cut -c2-2`-1))  > .v
			fi
			if [[ \$(date +%m|cut -c2-2) != \$(cat .v) ]];then
				cd $hoME
				bash $0
			fi
			if [ ! -f .pas ];then
				echo "saadnj" > .pas
			fi
			BWhite='\033[1;37m' BBlack='\e[1;30m' BRed='\e[1;31m' white='\e[1;37m'
			echo -e """\$BRed
███████╗  ██████╗   ██████╗  ██████╗       ███╗   ██╗ ╔██████╗
██╔════╝ ██╔═══██╗ ██╔═══██╗ ██╔══██╗ ╔══╗ ████╗  ██║ ╚═════██╗
███████╗ ████████║ ████████║ ██║  ██║ ║██║ ██╔██╗ ██║ ╔███╗ ██║
╚════██║ ██╔═══██║ ██║   ██║ ██║  ██║ ╚══╝ ██║╚██╗██║ ██╔═╝ ██║
███████║ ██║   ██║ ██║   ██║ ██████╔╝      ██║ ╚████║ ╚██████╔╝
╚══════╝ ╚═╝   ╚═╝ ╚═╝   ╚═╝ ╚═════╝       ╚═╝  ╚═══╝  ╚═════╝
                                        \e[95m*\$BBlack
 _____________                                            \e[34m*\${BBlack}
<_\$BWhite labs test\${BBlack} _>             •\${BBlack}
  \---^|^---/                     \e[90m*         \e[94m*      \${white}* \${BBlack}
       |     !__!
       |     (oo)____                                   \${BRed}•\${BBlack}
       |     (__)    )\               
       |        ||--|| *
-------^--------^^--^^-----------------------------------------\${white}
Use this tool for educational purpose only
\n\$BRed* \${white}kali-linux   [\${BBlack}1\${white}]\n\$BRed* \${white}termux       [\${BBlack}2\${white}]\n\$BRed* \${white}termux Vip   [\${BBlack}3\${white}]\n\$BRed* \${white}passwd       [\${BBlack}4\${white}]\n\$BRed* \${white}about        [\${BBlack}5\${white}]\n\$BRed* \${white}update       [\${BBlack}6\${white}]\n\$BRed* \${white}remove       [\${BRed}7\${white}]\n\n"""
			echo -n "Enter a number: "
			read -r ask
			#read -p "Enter a number : " ask
			function banner () {
   				printf "\n\${BBlack}####################################################"
    				printf "\n##                                                ##"
    				printf "\n##\${BWhite}   88     a8P          db        88        88   \${BBlack}##"
    				printf "\n##\${BWhite}   88   .88'          d88b       88        88   \${BBlack}##"
    				printf "\n##\${BWhite}   88  88'           d8''8b      88        88   \${BBlack}##"
    				printf "\n##\${BWhite}   88 D88           d8'  '8b     88        88   \${BBlack}##"
    				printf "\n##\${BWhite}   8888'88.        d8YaaaaY8b    88        88   \${BBlack}##"
    				printf "\n##\${BWhite}   88P   Y8b      d8''''''''8b   88        88   \${BBlack}##"
    				printf "\n##\${BWhite}   88     '88.   d8'        '8b  88        88   \${BBlack}##"
    				printf "\n##\${BWhite}   88       Y8b d8'          '8b 888888888 88   \${BBlack}##"
    				printf "\n##                                                ##"
    				printf "\n#################### \${BRed}by Saad NJ\${BBlack} ####################\n\n\$white"
			}
			login () {
				#### line to mount /sdcard directly
					# -b /sdcard
				unset LD_PRELOAD && proot --link2symlink -0 -r kali -b /dev -b /proc -b ~:/home -b kali/root:/dev/shm -w /home /usr/bin/env -i HOME=/home PATH=/usr/bin:/usr/local/bin:/bin:/usr/local/sbin:/sbin:/usr/sbin:/usr/games:/usr/local/games TERM=xterm-256color LANG=C.UTF-8 /bin/bash --login
			}
			clear
			if [[ \$ask -eq 1 ]];then
				#Check if the password
				tm=0
				banner
				while :
				do
					read -p "[!] password for kali-linux: " pas
					pas=`echo \$pas|tr [A-Z] [a-z]`
					if [ "\$pas" == \$(cat .pas) ];then
						BWhite='\033[1;34m'
						clear;banner
						printf "\${white}Welcome to \${BWhite}Kali-Linux\${white} script v1.\$((\$(cat .v)-2))\n\n"
						login
						break
					else
						echo -e "Sorry, [ \${BRed}\$pas\$white ] try again."
					fi
					tm=\$((tm+1))
					if [[ \$tm -eq 3 ]];then
						echo "! : 3 incorrect password attempts"
						sleep 2
						bash
						break
					fi
				done
			elif [[ \$ask -eq 2 ]];then
				cd ..
				cat .motd
			elif [[ \$ask -eq 3 ]];then
cd ..
echo """###############################
###### Your Name for PS1 ######
###############################
"""
read -p  "what is your name :" name
if [ ! -f .bash.bashrc ]; then
cp bash.bashrc .bash.bashrc
fi
clear
				echo -e "\e[97m                      ______
                   .-        -.
                  /            \  \${BRed}By\033[1m \e[34m.\${BRed}•SaAd.Nj•
     \e[94m* \e[97m                   \e[90m* \e[97m
                 |,  .-.  .-.  ,|        * \e[97m
                 | )(_ /  \ _)( |
                 |/     /\     \|    \e[34m* \e[97m
       (@_       <__    ^^    __>         \e[95m* \e[97m
 _      ) \_______\__|IIIIII|__/_________\e[31m_______ \e[97m
(_)\${BRed}@8@8\e[97m{}<________\${BRed}_____\e[97m__________\${BRed}_______________> \e[97m
        )_/         \ IIIIII /              \${BRed}::::: \e[97m
       (@            --------                  \${BRed}::
                                                :

Not completed yet \${white}!!!
"
echo "PS1='\[\033[1;32m\]┌────\e[1;31m[ \033[1;37m\$name \e[1;31m]\033[1;32m───────────\e[1;31m[\033[1;37m\T\e[1;31m]\e[1;32m─┐\n\e[1;31m#[\033[1;37m\u@\h\e[1;31m]\e[1;31m\n\033[1;32m└─────>\[\033[01;34m\]\w\[\033[00m\]\$ \033[1;37m' ;cd ~ ;mv /data/data/com.termux/files/usr/etc/.bash.bashrc /data/data/com.termux/files/usr/etc/bash.bashrc" > bash.bashrc  
bash
			elif [[ \$ask -eq 6 ]];then
				clear
					printf "\n\n\n\n\n\n\n\n\n\n\n"
					for X in 90 31 91 32 33 34 35 95 36 97; do
						echo -en "\r \e[\${X}m                       update Kali Linux \e[0m "
					sleep 1
				done
				echo 0  > .v
				bash
			elif [[ \$ask -eq 7 ]];then
				echo -e "removeing all file \${BRed}Kali-Linux\$white";echo
				cd ${files}usr/etc/
				./.rmkali
			elif [[ \$ask -eq 4 ]];then
				banner
				## Changing password
				printf "Changing password for kali \${BRed}\$(cat .pas)\${white}\n"
				pps=0
				while true ;do
					read -p "Current password: " paswd
					if [ "\$paswd" == \$(cat .pas) ];then
						pps1=0
						while true ;do
							read -p "New password: " new
							read -p "Retype new password: " new1
							if [ "\$new" == \$new1 ];then
								echo "\$new" > .pas
								clear;banner
								echo -e "\${BBlack}\$new\${white}: password updated successfully"
								echo
								login
								break
							else
								echo "Sorry, passwords do not match. [ \$new != \$new1 ]"
							fi
							if [[ \$pps1 -eq 2 ]];then
								echo "! : 3 incorrect password attempts"
								echo
								echo "passwd: Authentication token manipulation error"
								echo "passwd: password unchanged";sleep 2
								bash
								break
							fi
							pps1=\$((pps1+1))
						done
						break
					else
						echo -e "Sorry, [ \${BRed}\$paswd\$white ] try again."
					fi
					if [[ \$pps -eq 2 ]] ;then
						echo "! : 3 incorrect password attempts"
						echo
						echo "passwd: Authentication token manipulation error"
						echo "passwd: password unchanged";sleep 2
						bash
						break
					fi
					pps=\$((pps+1))
				done
			elif [[ \$ask -eq 5 ]];then
				# about
				echo -e """####################
######[ info ]######
####################"""
				printf "\n* Youtube     [1]\n* Page        [2]\n* Facebook    [3]\n* Instagram   [4]\n* Twitter     [5]\n* Github      [6]\n\n"
				read -p "Enter a number : " asky
				case \$asky in
				1) termux-open https://youtube.com/channel/UCYs_yQNKlr9P3-Gkx7v9voA ;;
				2) termux-open https://facebook.com/Information.5ection ;;
				3) termux-open https://facebook.com/saad.nj.w ;;
				4) termux-open https://www.instagram.com/saad.nj1 ;;
				5) termux-open https://www.twitter.com/ ;;
				6) termux-open https://github.com/saadma3lomat/ ;;
				*) echo "Invalid option, try again!" && sleep 2 ;;
				esac
				bash
			else
				echo "Invalid option, try again!";sleep 2;bash
			fi
			comm
			# making executable
			echo "Execute $main ";echo
			chmod +x $main
		    fi
		    cd kali;sleep 1
		else
			echo
			echo -e "${red}kali-rootfs.tar.xz ${ITecture} has not been downloaded${ncolor}."
			echo
			echo "Exiting $0 script v1.$ver -  :("
			echo "reported by contacting us at [ @Saad Nj ]."
			echo
		fi
		if [ ! -d ${folder}kali/usr/local/games ];then
		if [ -f ${hoME}/kali-rootfs.tar.xz ];then
			if [ $(ls -l ${hoME}/kali-rootfs.tar.xz|cut -c 30-31) == 0 ];then
				rm  ${hoME}/kali-rootfs.tar.xz
			fi
		else
			echo "${red}kali-rootfs.tar.xz file not loaded ${ncolor}!"
		fi
		if [ -f ${hoME}/kali-rootfs.tar.xz ];then
			echo -e "${cyan}Decompressing kali-rootfs${ncolor}, please be patient."
			echo
			proot --link2symlink tar -Jxf ${hoME}/kali-rootfs.tar.xz
			if [[ $? -eq 0 ]];then
				echo -ne " Searching   : ${reed} \t\t\t\t\t\t[0%]${ncolor}\r";sleep .5
				echo -ne " Scripts     : ${reed}**\t\t\t\t\t\t[4%]${ncolor}\r";sleep .7
				echo -ne " Termux      : ${reed}******\t\t\t\t\t\t[10%]${ncolor}\r";sleep .7
				echo -ne " proot       : ${red}**********\t\t\t\t\t[20%]${ncolor}\r";sleep .7
				echo -ne " wget        : ${red}***************\t\t\t\t\t[30%]${ncolor}\r";sleep .7
        			echo -ne " tar         : ${red}*********************\t\t\t\t[40%]${ncolor}\r";sleep .7
        			echo -ne " dpkg        : ${green}**************************\t\t\t[50%]${ncolor}\r";sleep .7
        			echo -ne " Update      : ${green}******************************\t\t\t[60%]${ncolor}\r";sleep .7
        			echo -ne " Architecture: ${green}***********************************\t\t[70%]${ncolor}\r";sleep .7
        			echo -ne " Kali.tar.xz : ${greenn}*****************************************\t[80%]${ncolor}\r";sleep .7
        			echo -ne " All files   : ${greenn}*******************************************\t[90%]${ncolor}\r";sleep .7
        			echo -ne " All tools   : ${greenn}******************  Complate  ****************** [100%]${ncolor}\r";sleep 1
       				echo -ne '\n\n'

				# removing image file
				echo -e "${cyan}Clean and remove kali-rootfs.tar.xz ${ncolor}for some space"
				rm $hoME/kali-rootfs.tar.xz
				apt-get clean
				echo
			else
				echo -e "${red}kali-rootfs.tar.xz ${ITecture} has not been Decompressing${ncolor}."
			fi
		fi
		fi
		if [ -d ${folder}kali/usr/local/games ];then
		    if [ ! -d ${files}usr/etc/$varr ];then
			cd ${files}usr/etc/
			cat > $varr <<- fo
			cd ${files}usr/etc/
			if [ ! -f ${files}usr/etc/.rmkali ];then
				## delete all files in case of problems
				cat > '.rmkali' <<- co
				cd ${files}usr/etc/
				if [ -d $folder ];then
					rm -rf $folder
				fi
				if [ -f bash.bashrc.Old ];then
      					mv bash.bashrc.Old bash.bashrc
				fi
				if [ -f .bash.bashrc ];then
     		 			rm .bash.bashrc
				fi
				if [ -f .motd ];then
      					mv .motd motd
				fi
				echo "removeing all file Kali-Linux";sleep 3
				rm .rmkali $varr
				clear;cat motd
				co
				chmod +x .rmkali
			fi
			## run-kali
			if [ ! -f $folder$main ];then
				if [ -f $hoME/$0 ];then
					cd $hoME
					bash $0
				fi
			fi
			if [ -d ${folder}kali/usr/local/games -a -f ${folder}$main -a -f ${files}usr/etc/.rmkali ];then
				if [ ! -f .motd ];then
					mv motd .motd
				fi
				if [ -f bash.bashrc.Old ];then
					mv bash.bashrc.Old bash.bashrc
				fi
				if [ -f bash.bashrc ];then
					cp bash.bashrc bash.bashrc.Old
				fi
				printf "alias kalirm='cd /data/data/com.termux/files/usr/etc/ && ./.rmkali;cd ~' \nalias kali='cd ${files}usr/etc && ./.chick;cd ~' \nkali\n" >> bash.bashrc				
				cd ${folder};./run-kali
			else
				 ./.rmkali
			fi
			fo
			chmod +x $varr
		    fi
			read -t7 -p "Press [ Enter ] key to continue... " Enter
			clear
			printf "\n\n\n\n\n\n\n\n\n\n\n"
			for X in 90 31 91 32 33 34 35 95 36 97; do
				echo -en "\r \e[${X}m                       Running Kali Linux \e[0m "
				sleep 1
			done
			./$varr
		else
				echo -e "${red}There is an error some files not found ${ncolor}!"
		fi
		ConX
		echo "******** [ Exiting ] *********"
		termux-open https://facebook.com/Information.5ection
	fi
fi
