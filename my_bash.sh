# Identity settings
USR=$(whoami)

# Login alerts
if service --status-all | grep -Fq 'mail'; then
  mail -H -u $USR
fi

# Prompt colors
if [ $(id -u) -eq 0 >/dev/null  2>&1 ]; then
  export PS1="\[\033[01;41m\]\u\[\033[00;37m\]@\h:\[\033[01;94m\]\w\\[\033[00;37m\]$ "
else
  export PS1="\[\033[01;92m\]\u\[\033[00;37m\]@\h:\[\033[01;94m\]\w\\[\033[00;37m\]$ "
fi

