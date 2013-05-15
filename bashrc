export PATH=~/.local/bin:~/.local/usr/bin:$PATH

# These don't need to be kept, may contain sensitive information
rm -rf ~/.purple/logs/irc/intchanter@irc.zoelife4u.org/chanserv
rm -rf ~/.purple/logs/irc/intchanter@irc.zoelife4u.org/nickserv
rm -rf ~/.purple/logs/irc/intchanter@irc.zoelife4u.org/opsb
rm -rf ~/.purple/logs/irc/DanielFackrell@irc.bluehost.com/chanserv
rm -rf ~/.purple/logs/irc/DanielFackrell@irc.bluehost.com/nickserv
rm -rf ~/.purple/logs/irc/DanielFackrell@irc.bluehost.com/opsb

# Work SSH aliases:
alias zssh="/usr/bin/ssh -tA -p5190 zugzug.bluehost.com /usr/bin/ssh"
alias amain='zssh -tA main.dfackrell.alpha.bluehost.com $@'
alias auser='zssh -tA box101.dfackrell.alpha.bluehost.com $@'

alias ossh='zssh -t intchant@box596.bluehost.com /home/intchant/.local/bin/ssh/bash -tA $@'
alias techproxy='firefox-ssh.pl'
alias tp='firefox-ssh.pl'
alias horseman='ossh intchanter@intchanter.sytes.net $@'
alias inty='zssh -t intchant@box596.bluehost.com $@'
alias kahlotus='ossh -tp 6022 intchanter@intchanter.sytes.net $@'

alias ie7='rdesktop -g 1200x700 ie7.winvm2.bluehost.com -uIEUser -pieuser'
alias ie8='rdesktop -g 1200x700 ie8.winvm2.bluehost.com -uIEUser -pieuser'
alias ie9='rdesktop -g 1200x700 ie9.winvm2.bluehost.com -uIEUser -pieuser'

# Needed for CVS to work
export CVS_RSH=ssh

. ~/.local/bin/handle_command_not_found.bash

export PERL_LOCAL_LIB_ROOT="/home/dfack/perl5";
export PERL_MB_OPT="--install_base /home/dfack/perl5";
export PERL_MM_OPT="INSTALL_BASE=/home/dfack/perl5";
export PERL5LIB="/home/dfack/perl5/lib/perl5/i386-linux-thread-multi:/home/dfack/perl5/lib/perl5";
export PATH="/home/dfack/perl5/bin:$PATH";

# Turn on ALL THE NUMLOCKS!
/usr/bin/numlockx on

# Virtualenvwrapper fun
export WORKON_HOME="$HOME/.virtualenvs"
source $HOME/.local/bin/virtualenvwrapper_bashrc

export PS1='\n\u@\h \w $ '
