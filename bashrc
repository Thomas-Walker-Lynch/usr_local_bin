# note ssh will fail if bashrc writes to stdout

export TIME_STYLE=long-iso
umask 0007
export HOME=$(/usr/local/bin/home)
export PS_FORMAT=user:15,pid,%cpu,%mem,vsz,rss,tty,stat,start,time,command
export EDITOR=emacs

export PS1='\n$(/usr/local/bin/Z)\n\u@\h§\w§\n> '
export PS2='>>'

# Make jupyterlab happy
#
#  export PATH=~/bin:~/.local/bin:"$PATH"
  # export PATH=~/bin:~/projects/share:"$PATH"

if [[ $HOME == "/home/lfs" ]]; then
  export PATH=~/repo/LFS/executable:~/repo/resources/executable:"$PATH"
fi

if [[ $HOME == "/home/Thomas/admin_root" ]]; then
  export PATH=~/admin/executable:/home/Thomas/repo_root/repo/subu/executable:"$PATH"
fi

if [[ $HOME == "/home/Thomas/repo_root" ]]; then
  export PATH=~/repo/resources/executable:"$PATH"
fi

#eval $(ssh-agent)
#ssh-add ~/.ssh/key

if [ -n "$INSIDE_EMACS" ]; then 
  echo Hello Emacs
  echo $PATH
fi


