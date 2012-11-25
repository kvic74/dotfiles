# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
 
# Set name of the theme to load.
ZSH_THEME="powerline"
 
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"
 
# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"
 
# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"
 
# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"
 
# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"
 
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github pip python)
 
source $ZSH/oh-my-zsh.sh

# -------------------------------------------------------------------
# General
# -------------------------------------------------------------------
 alias 'today=calendar -A 0 -f /usr/share/calendar/calendar.mark | sort'
 alias 'dus=du -sckx * | sort -nr'
 alias 'adventure=emacs -batch -l dunnet'
 alias 'mailsize=du -hs ~/Library/mail'
 alias 'bk=cd $OLDPWD'
 alias 'ttop=top -ocpu -R -F -s 2 -n30'
 alias l='ls -CF --color=auto'
 alias diff='colordiff'
 alias -s gz='tar -xzvf'
 alias -s bz2='tar -xjvf'
 alias -s zip='unzip'
 alias -s txt=$EDITOR
 alias -s html=$BROWSER

# -------------------------------------------------------------------
# Mercurial (hg)
# -------------------------------------------------------------------
 alias 'h=hg status'
 alias 'hc=hg commit'
 alias 'push=hg push'
 alias 'pull=hg pull'
 alias 'clone=hg clone'

 # -------------------------------------------------------------------
 # Git
 # -------------------------------------------------------------------
 alias ga='git add'
 alias gp='git push'
 alias gl='git log'
 alias gs='git status'
 alias gd='git diff'
 alias gm='git commit -m'
 alias gma='git commit -am'
 alias gb='git branch'
 alias gc='git checkout'
 alias gra='git remote add'
 alias grr='git remote rm'
 alias gpu='git pull'
 alias gcl='git clone'
 alias gta='git tag -a -m'
 alias gf='git reflog'

# -------------------------------------------------------------------
# Personnal Aliases
# -------------------------------------------------------------------

# sort files in current directory by the number of words they contain
alias 'wordy=wc -w * | sort | tail -n10'
alias 'filecount=ls -aRF | wc -l'
alias rm='rm -i'
alias cp='cp -i'
alias c='clear'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias h='history | grep'
alias j='jobs -l'
alias which='type -a'
alias ..='cd ..'
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'
alias du='du -kh' 
alias df='df -kTh'
alias ltx='pdflatex'

#-------------------------------------------------------------
# The 'ls' family (this assumes you use a recent GNU ls)
#-------------------------------------------------------------

alias ll="ls -l --group-directories-first"
alias ls='ls -hF --color'  # add colors for filetype recognition
alias la='ls -Al'          # show hidden files
alias lx='ls -lXB'         # sort by extension
alias lk='ls -lSr'         # sort by size, biggest last
alias lc='ls -ltcr'        # sort by and show change time, most recent last
alias lu='ls -ltur'        # sort by and show access time, most recent last
alias lt='ls -ltr'         # sort by date, most recent last
alias lm='ls -al |more'    # pipe through 'more'
alias lr='ls -lR'          # recursive ls
alias tree='tree -Csu'     # nice alternative to 'recursive ls'

#-------------------------------------------------------------
# Ventcast
#-------------------------------------------------------------

#alias vc='cd ~/vc'
#alias rs='vc && rails s'
#alias vcdb='bundle exec rake db:drop && bundle exec rake db:create  && bundle exec rake db:migrate'
#alias vcr='rake db:reset'
#alias g='vc && git gui'
alias rc='rails console'
alias pop='rake db:populate'
alias share='sudo mount -t vboxsf -o uid=1000,gid=1000 VMwareShared ~/Shared'

#-------------------------------------------------------------
# Archlinux
#-------------------------------------------------------------

alias pi='sudo pacman -S'
alsi

#-------------------------------------------------------------
# Temporary
#-------------------------------------------------------------

alias i='sudo apt-get install'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias ts='vc && bundle exec thin start -p 2000'
alias brc='gedit ~/.bashrc &'
alias bc='ssh -X -t -p 22 ww8655@snowy.cs.bris.ac.uk ssh ww8655@bluecrystalp2.bris.ac.uk'
alias aws-njoin='ssh willwill@aws-stage.njoin.co.uk -L 3000:localhost:80'
alias resetgenome='rm -rf .gnome .gnome2 .gconf .gconfd .metacity'
alias guard_='guard -c --notify false'
alias rvm-jist='rvm use 1.9.3 && rvm gemset use rails325'
alias rvm-jistp='rvm use 1.9.3 && rvm gemset use prerelease'
alias aws-jist='ssh -i ~/.ssh/ubuntu2.pem ubuntu@79.125.126.138'
alias mongo3-jist='cd ~/.mongo3 && mongo3'
alias rails_new='rails new myapp -m https://github.com/RailsApps/rails3-application-templates/raw/master/rails3-mongoid-devise-template.rb -T -O'
alias zrc='vim ~/.zshrc'
alias scaf='rails g scaffold'
alias aws='ssh -X bitnami@aws-stage.njoin.co.uk'
alias lt='localtunnel -k ~/.ssh/id_rsa.pub '


export TERM='xterm-256color'