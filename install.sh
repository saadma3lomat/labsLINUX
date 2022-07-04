#!/data/data/com.termux/files/usr/bin/bash

#### Copyright 2022 computer-saadnj. All rights reserved.
########################################################################################
####  Distro with this script : Termux  ##############  Usage... : bash install.sh  ####
########################################################################################

. functions.sh #bsmlah

export fille=$1
if ! [ -f ${files}usr/etc/${main[1]} -a -d $folder$dist ];then
	inFo
	sysTem
	if [ $dist == ${NaMe[8]} ];then
		treVIP
		exit
	elif [ $dist == 404 ];then
		sysTem
	fi
	logenamE=`echo $dist|tr [a-z] [A-Z]`
	check
	if [ `uname -o` != Android ];then
		echo -e "The Script is only used in ${green}${NaMe[7]} ${white}!";sleep 1
		echo
		echo "Exiting $0 script v1.$ver - ! :(";sleep 1
		echo -e "reported by contacting us at [$cyan @${arria[1]} ${white}]\n"
		Https="firefox https"
	else
		if [ ~/labsLINUX == `pwd` ];then
			(
			tXT=`grep ^DIST ${folder}functions.sh`
			rm ${folder}functions.sh ${folder}$0 
			echo $tXT >> functions.sh
			) &> /dev/null
		fi
		if [ ! -d $folder$dist ];then
			mkdir -p $folder$dist
		fi
		cp functions.sh $0 $folder &> /dev/null
		if [ ! -f $v2 ];then
			echo `date +%m|cut -c2-2` > $v2
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
			apt-get update
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
				abouT
			fi
		fi
		itecarch
		echo -e "[ ${yellow}Arch-itecture${white} ] : $blue$ArchE$white > ${green}$ITecture${white}\n";sleep 1
		echo -e "[ ${yellow}Detecting system ${white}] : ${green}Termux${white}\n";sleep 1
		if [ -f ${hoME}/$tagz ];then
			if [ `ls -l ${hoME}/$tagz |cut -d ' ' -f5` -eq 0 ];then
				rm  ${hoME}/$tagz
			fi
		fi
		if [ ! -f ${hoME}/$tagz ];then
			echo -e "Download ${green}${tagz}${white},  Please Be Patient...\n"
			IMAGE
		fi
		if [ $? -eq "0" ]; then
		        if [ ! -f ${folder}$main ];then
				cat > ${folder}$main <<- EOF
#!${files}usr/bin/bash

. ${folder}functions.sh
if [ ! -f \${folder}.v ];then
	echo \$((\`date +%m|cut -c2-2\`-1))  > \${folder}.v
fi
if [[ \$(date +%m|cut -c2-2) != \$(cat \$v2 ) ]];then
	BAN
	Update
fi
if [ ! -f \${folder}.pas ];then
	echo \$arria > \${folder}.pas
fi
for i in \${DIST[*]} ;do
	if [ \$i == \${NaMe[1]} ];then oKk=\${greenn}✓
	elif [ \$i == \${NaMe[2]} ];then oKu=\${greenn}✓
	elif [ \$i == \${NaMe[3]} ];then oKf=\${greenn}✓
	elif [ \$i == \${NaMe[7]} ];then oKt=\${greenn}✓
	elif [ \$i == \${NaMe[8]} ];then oKh=\${greenn}✓
	elif [ \$i == \$NaMe ];then oKi=\${greenn}✓
	fi
done
LOGG
echo -e "\n\$BRed* \${white}\${NaMe[1]}-linux   [\${BBlack}1\${white}] \$oKk\n\$BRed* \${white}\${NaMe[2]}       [\${BBlack}2\${white}] \$oKu\n\$BRed* \${white}\${NaMe[3]}       [\${BBlack}3\${white}] \$oKf\n\$BRed* \${white}\${NaMe[7]}       [\${BBlack}4\${white}] \$oKt\n\$BRed* \${white}\${NaMe[7]}-\${NaMe[8]}   [\${BBlack}5\${white}] \$oKh\n\$BRed* \${white}Passwd       [\${BBlack}6\${white}] \$oKi\n\$BRed* \${white}About        [\${BBlack}7\${white}]\n\$BRed* \${white}Update       [\${BBlack}8\${white}]\n\$BRed* \${white}Remove       [\${BRed}9\${white}]\n\n"
echo -n "Enter a number: "
read -r ask
clear
if [[ \$ask -eq 1 ]];then
	logenamE=\${NaMe[4]}
	IMAGEY
	rcbash "alias rmk=\"export dist=\\\${NaMe[1]}&&bash \\\${main[2]}\"\nalias rm\${NaMe[1]}=\"export dist=\\\${NaMe[1]}&&bash \\\${main[2]}\"\nalias \${NaMe[1]}=\"logenamE=\\\${NaMe[4]} IMAGEY\"\n"
elif [[ \$ask -eq 2 ]];then
	logenamE=\${NaMe[5]}
	IMAGEY
	rcbash "alias rm\${NaMe[2]}=\"export dist=\\\${NaMe[2]}&&bash \\\${main[2]}\"\nalias rmu=\"export dist=\\\${NaMe[2]}&&bash \\\${main[2]}\"\nalias \${NaMe[2]}=\"logenamE=\\\${NaMe[5]} IMAGEY\"\n"
elif [[ \$ask -eq 3 ]];then 
	logenamE=\${NaMe[6]}
	IMAGEY
	rcbash "alias rmf=\"export dist=\\\${NaMe[3]}&&bash \\\${main[2]}\"\nalias rm\${NaMe[3]}=\"export dist=\\\${NaMe[3]}&&bash \\\${main[2]}\"\nalias \\\${NaMe[3]}=\"logenamE=\\\${NaMe[6]} IMAGEY\"\n"
elif [[ \$ask -eq 4 ]];then
	echo "DIST+=(\${NaMe[7]})" >> \${folder}functions.sh
	cat \${files}usr/etc/.motd
	logenamE="ter="
	rcbash "alias ter=\"clear&&cat \\\${files}usr/etc/.motd \"\nalias \${NaMe[7]}=\"clear&&cat \\\${files}usr/etc/.motd \"\n"
elif [[ \$ask -eq 5 ]];then
	logenamE=\${NaMe[8]}
	rcbash "alias rmv=\"clear&&cat \\\${files}usr/etc/.motd&&bash \"\nalias rmvip=\"clear&&cat \\\${files}usr/etc/.motd&&bash \"\nalias vip=treVIP\nalias vip\${NaMe[7]}=treVIP\n"
	treVIP
elif [[ \$ask -eq 6 ]];then
	logenamE=BAN
	Chang_psswrd
elif [[ \$ask -eq 7 ]];then
	abouT
elif [[ \$ask -eq 8 ]];then
	clear
	printf "\n\n\n\n\n\n\n\n\n\n\n\n\n"
	for X in 90 31 91 32 33 34 35 95 36 97; do
		echo -en "\r \e[\${X}m \t\t\t update labs Linux \e[0m "
		sleep 1
	done
	rm \$v2
	BAN
	Update
elif [[ \$ask -eq 9 ]];then
	Remo="5} Remove All"
	unset dist
	sysTem
	export dist
	bash \${main[2]}
elif [ \$ask == help -o \$ask == h ];then
	Help
else
	echo "Invalid option, try again!";sleep 2;bash
fi
if [ -f \${folder}functions.sh ];then
	grep -v ^DIST \${folder}functions.sh > .1
	grep ^DIST \${folder}functions.sh|sort|uniq >> .1
	mv .1 \${folder}functions.sh
fi
				EOF
			fi
		        echo -e "${cyan}Decompressing ${tagz}${ncolor}, please be patient."
		  	echo
		  	Proot
		   	if [[ $? -eq 0 ]];then
				Complate 
				echo "DIST+=(8) dist2+=($logenamE-ok)" >> ${folder}functions.sh       
				if [ ! -f ${files}usr/etc/${main[1]} ];then
					cat > "${files}usr/etc/${main[1]}" <<- EOF
#!${files}usr/bin/bash

. ${folder}functions.sh

for i in \${DIST[*]} ;do if [ \$i == \${NaMe[3]} -o \$i == \${NaMe[2]} -o \$i == \${NaMe[1]} -o \$i == \$NaMe ];then dist=\$i ;fi;done

if [ ! -f \${files}usr/etc/\${main[2]} ];then
	cat > "\${files}usr/etc/\${main[2]}" <<- EOFf
	#!\${files}usr/bin/bash

clear
	. \${folder}functions.sh
	## delete files in case of problems
	if [ \\\$dist == \\\${NaMe[1]} -o \\\$dist == \\\${NaMe[2]} -o \\\$dist == \\\${NaMe[3]} -o \\\$dist == \\\${NaMe[8]} -o \\\$dist == \\\$NaMe ];then
		echo "removeing all file \\\${dist}-Linux";sleep 3
		(
		dist21="\\\`echo \\\$dist|tr [a-z] [A-Z]\\\`-ok"
		grep -v ^DIST \\\${folder}functions.sh > .1
		grep ^DIST \\\${folder}functions.sh|sed "s/\\\$dist/8/g"|sed "s/\\\$dist21/8/g"|sort|uniq >> .1
		mv .1 \\\${folder}functions.sh
		if [ \\\$dist == \\\$NaMe ];then grep -v "\\\${NaMe}\|rmb" \\\${files}usr/etc/bash.bashrc > .2
			cp \${files}usr/etc/.motd \${files}usr/etc/motd
		elif [ \\\$dist == \\\${NaMe[1]} ];then grep -v "\\\${NaMe[1]}\|rmk" \\\${files}usr/etc/bash.bashrc > .2
		elif [ \\\$dist == \\\${NaMe[2]} ];then grep -v "\\\${NaMe[2]}\|rmu" \\\${files}usr/etc/bash.bashrc > .2
		elif [ \\\$dist == \\\${NaMe[3]} ];then grep -v "\\\${NaMe[3]}\|rmf" \\\${files}usr/etc/bash.bashrc > .2
		elif [ \\\$dist == \\\${NaMe[8]} ];then NaMe[8]=`echo ${NaMe[8]}|tr [A-Z] [a-z]`
			grep -v "\\\${NaMe[8]}\|rmv" \\\${files}usr/etc/bash.bashrc > .2
		fi
		cp .2 ~/.b
		mv .2 \\\${files}usr/etc/bash.bashrc
		rm -rf \\\$folder\\\$dist
		) &> /dev/null
		bash
	elif [ \\\$dist == 404 ];then
		echo "removeing all file Labs-Linux";sleep 3
		(
		mv \\\${files}usr/etc/bash.bashrc.script \\\${files}usr/etc/bash.bashrc
		mv \\\${files}usr/etc/.motd \\\${files}usr/etc/motd
		rm \\\${files}usr/etc/${main[1]} \\\${files}usr/etc/\\\${main[2]} \\\${files}usr/etc/.bash.bashrc \\\$folder ~/.b -rf
		) &> /dev/null
		clear;cat \${files}usr/etc/motd
		exit
	elif [ \\\$dist == 0 ];then
		exit 1
	fi
	EOFf
fi

## $main
if [ ! -f \$folder\$main ];then
	if [ -f \${folder}$0 ];then
		bash $0
	fi
fi
	if [ ! -f \${files}usr/etc/.motd ];then
		mv \${files}usr/etc/motd \${files}usr/etc/.motd
	fi
	if [ ! -f \${files}usr/etc/bash.bashrc.script ];then
		mv \${files}usr/etc/bash.bashrc \${files}usr/etc/bash.bashrc.script
		logenamE=404
        	rcbash "PS1='\\\$ '\n. \${folder}functions.sh\nexport PATH=\\\$PATH:\\\$folder:\\\${files}usr/etc \n\nalias rms=\"export dist=404&&bash \\\${main[2]}\"\nalias rmscript=\"export dist=404&&bash \\\${main[2]}\" "
		logenamE=\${NaMe}
		rcbash "alias rm\$NaMe=\"export dist=\\\$NaMe&&bash \\\${main[2]}\"\nalias rmbanner=\"export dist=\\\$NaMe&&bash \\\${main[2]}\"\nalias \$NaMe=\"bash \\\${main[1]}\" " 
	fi
bash \${folder}\$main
					EOF
				fi
		    		read -t7 -p "Press [ Enter ] key to continue... " Enter
		  		clear
		  		printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
		  		for X in 90 31 91 32 33 34 35 95 36 97; do
		  			echo -en "\r \e[${X}m \t\t\t Running $dist Linux \e[0m "
		  	      		sleep .8
		  	      	done
		  	     	bash ${files}usr/etc/${main[1]}
			else
				echo -e "${BRed}$tagz ${ITecture} has not been Decompressing${ncolor}."
		 	fi
		else
			echo -e "\n${BRed}$tagz file not loaded ${ncolor}!\n${BRed}$tagz ${ITecture} has not been downloaded${ncolor}.\n${BRed}There is an error some files not found ${ncolor}!\nExiting $0 script v1.$ver -  :(\nreported by contacting us at [ @${arria[1]} ]."
		fi
	fi
else
	if  [ -f ${files}usr/etc/${main[1]} ];then
		bash ${main[1]}
	fi
fi
read -t 6
abouT
