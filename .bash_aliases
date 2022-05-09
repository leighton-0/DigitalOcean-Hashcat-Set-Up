

#################################################################
#			My Aliases File			        #
#################################################################

#	to list top 10 commands used;
#	history | awk '{cmd[$2]++} END {for(elem in cmd) {print cmd[elem] " " elem}}' | sort -

# Just a jumbled collection of mine and others aliases - 
#	Needs reconciling and sorting

    alias bc="bc -l"

# Display the directory structure better.
alias tree='tree --dirsfirst -F'


# Estimate file space usage to maximum depth

    alias du1="du -d 1"

# Git commands

    alias gs="git status"
    alias gst="git status -sb"
    alias gl="git log"
    alias ga="git add"
    alias gaa="git add -A"
    alias gal="git add ."
    alias gall="git add ."
    alias gca="git commit -a"
    alias gc="git commit -m"
    alias gcot="git checkout"
    alias gchekout="git checkout"
    alias gchckout="git checkout"
    alias gckout="git checkout"
    alias go="git push -u origin"
    alias gsh='git stash'
    alias gw='git whatchanged'
    alias gitlg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
    alias nah="git clean -df && git checkout -- ."

# History commands

    alias h="history"
    alias h1="history 10"
    alias h2="history 20"
    alias h3="history 30"
    alias hgrep='history | grep'

# List commands

    alias l="ls"
    alias l='ls -lAh'
    alias ls="ls -a"
    alias la="ls -a"
    alias ll="ls -al"

# Ping Commands

    alias pg="ping google.com -c 5"
    alias pt="ping facebook.com -c 5"
    alias ping="ping -c 5"
    alias fastping="ping -c 100 -s.2"

# Exit Command

    alias :q="exit"
    alias ext="exit"
    alias xt="exit"
    alias by="exit"
    alias bye="exit"
    alias die="exit"
    alias quit="exit"

# System state

    alias reboot="sudo /sbin/reboot"
    alias poweroff="sudo /sbin/poweroff"
    alias halt="sudo /sbin/halt"
    alias shutdown="sudo /sbin/shutdown"
    alias flighton='sudo rfkill block all'
    alias flightoff='sudo rfkill unblock all'
    alias snr='sudo service network-manager restart'

# Show open ports

    alias ports='sudo netstat -tulanp'

# Free and Used

    alias meminfo="free -m -l -t"

# Get top process eating memory

    alias psmem="ps auxf | sort -nr -k 4"
    alias psmem10="ps auxf | sort -nr -k 4 | head -10"

# Get top process eating cpu

    alias pscpu="ps auxf | sort -nr -k 3"
    alias pscpu10="ps auxf | sort -nr -k 3 | head -10"

# Get details of a process

    alias paux='ps aux | grep'

# Get server cpu info

    alias cpuinfo="lscpu"

# Get GPU ram on desktop / laptop

    alias gpumeminfo="grep -i --color memory /var/log/Xorg.0.log"

# Grabs the disk usage in the current directory

    alias usage='du -ch | grep total'

# Gets the total disk usage on your machine

    alias totalusage='df -hl --total | grep total'

# Shows the individual partition usages without the temporary memory values

    alias partusage='df -hlT --exclude-type=tmpfs --exclude-type=devtmpfs'

# Gives you what is using the most space. Both directories and files. Varies on current directory

    alias most='du -hsx * | sort -rh | head -10'





alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias la='ls -a'

alias c='clear'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias diff='colordiff'

alias h='history'

alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'


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

alias ports='netstat -tulanp'				# list all TCP/UDP port on the server:

# Stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'
# Do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s.2'

 display all rules #
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias firewall=iptlist

# update on one command
alias update='sudo apt-get update && sudo apt-get upgrade'

## play video files in a current directory ##
# cd ~/Download/movie-name
# playavi or vlc
alias playavi='mplayer *.avi'
alias vlc='vlc *.avi'
 
# play all music files from the current directory #
alias playwave='for i in *.wav; do mplayer "$i"; done'
alias playogg='for i in *.ogg; do mplayer "$i"; done'
alias playmp3='for i in *.mp3; do mplayer "$i"; done'
 
# play files from nas devices #
alias nplaywave='for i in /nas/multimedia/wave/*.wav; do mplayer "$i"; done'
alias nplayogg='for i in /nas/multimedia/ogg/*.ogg; do mplayer "$i"; done'
alias nplaymp3='for i in /nas/multimedia/mp3/*.mp3; do mplayer "$i"; done'
 
# shuffle mp3/ogg etc by default #
alias music='mplayer --shuffle *'

## pass options to free ##
alias meminfo='free -m -l -t'
 
## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
 
## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
 
## Get server cpu info ##
alias cpuinfo='lscpu'
 
## older system use /proc/cpuinfo ##
##alias cpuinfo='less /proc/cpuinfo' ##
 
## get GPU ram on desktop / laptop##
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'

# Display the directory structure better.
alias tree='tree --dirsfirst -F'

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
