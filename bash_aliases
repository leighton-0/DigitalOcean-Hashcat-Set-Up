
Skip to content
Pull requests
Issues
Marketplace
Explore
@Gracetown58
Gracetown58 /
DO
Public

Code
Issues
Pull requests
Actions
Projects
Wiki
Security
Insights

    Settings

DO/bash_aliases
@Gracetown58
Gracetown58 Rename .bash_aliases to bash_aliases
Latest commit 1a1039c 6 hours ago
History
1 contributor
174 lines (150 sloc) 4.56 KB

#################################################################
#			My Aliases File			#
#################################################################


#alias gs1='gedit ~/zz_scripts/s1.sh'
alias gs2='gedit ~/zz_scripts/s2.sh'
alias gs3='gedit ~/zz_scripts/s3.sh'
#alias gs4='gedit ~/
alias gs5='gedit ~/zz_scripts/s5.sh'
alias s1='~/zz_scripts/s1.sh'	# test if dir exists and do....
alias s2='~/zz_scripts/s2.sh'	# sandpit
alias s3='~/zz_scripts/s3.sh'  		# recon script from github as a working example
alias s4
alias s4r='cd ~/reconftw && ./reconftw.sh -d <target.com> -r -0 ~/zz_reports'	#perform full recon on single target
alias s5='~/zz_scripts/s5.sh'

alias mycron='zsh ~/zz_scripts/mycron.sh'
alias gmycron='gedit ~/zz_scripts/mycron.sh'
alias usage="free -h;   df -h"			# prints out CPU and disk space
alias tt='echo tt'
alias deb="cd /media/root/88074a57-52bf-472f-9166-be9e6400a924/home/leighton/Downloads"
alias sdn='shutdown now'
alias v1='grep VERSION /etc/os-release'
alias v2='uname -a'
#alias upd='apt update && apt -y full-upgrade'
alias ba='gedit .shell_aliases'
alias bc='gedit .hrc'
#alias ip='wget http://ipinfo.io/ip -qO -'
# alias srr='. .bashrc && . .bash_aliases'
alias srr='source ~/.zshrc && source ~/.shell_aliases'
#alias snms='service network-manager start'
alias snms='systemctl restart NetworkManager'
alias lmacc1='/usr/local/bin/./lmacc1.sh'
alias lmacc0='/usr/local/bin/./lmacc0.sh'
#alias tor='sudo -u kali -H torbrowser-launcher'
alias his='history | grep'
alias spiderfoot='spiderfoot -l 127.0.0.1:5009'
alias vpns='nordvpn status'
alias vpndc='nordvpn connect Double_VPN'
alias ethers='cat >> /.config/wireshark/ethers
#alias clone='echo dd if=/dev/sdb of=/dev/sdd bs=4096 status=progress'
alias msglog='tail -f /var/log/messages'
#dmesg
#journalctl -f
alias ttt='echo this is alias example' date
alias h='history'			# Press h to view the bash history
alias ..='cd ..;pwd'			# Move to the parent folder.
alias ...='cd ../..;pwd'		# Move up two parent folders.
alias ....='cd ../../..;pwd'		# Move up three parent folders.
#+++++++++++++++++++++++++++++++++++++++++++
airgeddon ()  {
	cd airgeddon
	./airgeddon.sh
}
#+++++++++++++++++++++++++++++++++++++++++++
#+++++++++++++++++++++++++++++++++++++++++++
fluxion ()  {
	cd fluxion
	./fluxion.sh
}
#+++++++++++++++++++++++++++++++++++++++++++
#
#=================================
----------IP Address & Location
kkk () {
	#echo "sets up anon IP & MAC"
	#lmacc0
	#sleep 30
	nordvpn connect Double_VPN
	sleep 30
	#nordvpn set killswitch enable
	#sleep 10
	nordvpn status
}
#=====
#alias clone='echo dd if=/dev/sdb of=/dev/sdd bs=4096 status=progress'
#dmesg
#journalctl -f
#+++++++++++++++++++++++++++++++++++++++++++
airgeddon ()  {
	cd airgeddon
	./airgeddon.sh
}
#+++++++++++++++++++++++++++++++++++++++++++
#+++++++++++++++++++++++++++++++++++++++++++
fluxion ()  {
	cd fluxion
	./fluxion.sh
}
#+++++++++++++++++++++++++++++++++++++++++++
#USER DEFINED SHELL FUNCTIONS
#---------DISK UTILISATION REPORT
ds () {
	echo "Disk space utilisation for $HOSTNAME"
	df -h
}
#=======================================
# --------KALI UPDATE
upd () {
	grep VERSION /etc/os-release > lb4upd.txt && uname -a >> lb4upd.txt
	echo "Update Kali"
	apt update && apt -y full-upgrade
	apt-get update --fix-missing
	apt autoremove
	grep VERSION /etc/os-release > laftupd.txt && uname -a >> laftupd.txt
	echo "Before upgrade"
	cat lb4upd.txt
	echo "After upgrade"
	cat laftupd.txt
}
#====================================
# ---------PING TELSTRA
ping1 () {
	echo "ping test to Telstra"
	ping 139.130.4.5 -c6
}
#===================================
#----------PING CLOUDFLARE
ping2 () {
	echo "ping test to cloudflare (uses anycast so should be quick)"
	ping  	1.1.1.1
	PID="$!"
	sleep 5
	echo "PID=$PID"
}
#=================================
#----------IP Address & Location
#iploc () {
	#echo "ping test to cloudflare (uses anycast so should be quick)"
	#wget -O ip_loc1 http://ipinfo.io/ip -qO - | wget -O ip_loc2 ~$ curl http://api.db-ip.com/v2/free/
	#wget -O ip_loc2 ~$ curl http://api.db-ip.com/v2/free/ < ip_loc1
	#wget http://ipinfo.io/ip -qO -
	#sleep 10
	#wget ~$ curl http://api.db-ip.com/v2/free/203.219.72.15
	#./iploc.sh
#}
#=================================
----------IP Address & Location
kkk () {
	#echo "sets up anon IP & MAC"
	#lmacc0
	#sleep 30
	nordvpn connect Double_VPN
	sleep 30
	#nordvpn set killswitch enable
	#sleep 10
	nordvpn status
}
#=====
ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ

    © 2022 GitHub, Inc.

    Terms
    Privacy
    Security
    Status
    Docs
    Contact GitHub
    Pricing
    API
    Training
    Blog
    About

Loading complete
