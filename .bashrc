#
#	 initial bashrc
#                              by GO!
#
[ "$BASH" = "" ] &&  return
# source system wide aliases
if [ -f /etc/bashrc ]; then
    source /etc/bashrc
fi

if [ -f ~/.lang/langrc.sh ]; then
    source ~/.lang/langrc.sh
elif [ -f /etc/sysconfig/lang ] ; then
   LANG=`cat /etc/sysconfig/lang` ; export LANG
fi

case `tty` in
    'not a tty')
    ;;
    *)
    [ "$(stty | grep erase)" = "" ] && \
    stty erase ''
    ;;
esac

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ..='cd ..'
alias ll='ls -l'
alias la='ls -aF'
alias vi='vim'
#alias vim='/usr/local/vim7/bin/vim'
alias vi='vim'
alias view='vim -R'

#alias ls='ls -NF --show-control-chars'
#alias ls='ls -NF --color=always --show-control-chars'
alias ls='ls -vF'
## if you use color ls, comment out above line and uncomment below 2 lines.
# LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.i386.rpm=01;31:*.src.rpm=01;30:*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.png=01;35:' ; export LS_COLORS
# alias ls='ls --color=auto -NF --show-control-chars'

alias ctags='/usr/local/bin/ctags'

export PS1=$'[\\u@\\h \\W]\\$ '
#export LANG="ja_JP.eucJP"
export LANG="ja_JP.utf-8"


export SVN_EDITOR=vi

# Mac固有設定
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/Library/Haskell/bin:$PATH
