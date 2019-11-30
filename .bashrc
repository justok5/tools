alias la='ls -AF'
alias ll='ls -AFhl'
alias cd..='cd ..'
alias cd...='cd ../..'
alias e='exit'
alias ffmpeg='ffmpeg -hide_banner'

export TIME_STYLE="+%Y-%m-%d %H:%M"

# enable color in man command
export LESS_TERMCAP_mb=$'\E[1;31m' 
# begin bold 
export LESS_TERMCAP_md=$'\E[1;36m' 
# begin blink 
export LESS_TERMCAP_me=$'\E[0m' 
# reset bold/blink 
export LESS_TERMCAP_so=$'\E[01;44;33m' 
# begin reverse video 
export LESS_TERMCAP_se=$'\E[0m' 
# reset reverse video 
export LESS_TERMCAP_us=$'\E[1;32m' 
# begin underline 
export LESS_TERMCAP_ue=$'\E[0m' 
# reset underline 
export GROFF_NO_SGR=1 
# for konsole and gnome-terminal

# clear ads in GaoDe & DuoDian
rm -f  /sdcard/Android/data/com.wm.dmall/cache/splash/*
rm -f  /sdcard/autonavi/afpSplash/*

#cd /sdcard/Download

