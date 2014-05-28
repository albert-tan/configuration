export CC=/usr/local/bin/gcc-4.2
export CXX=/usr/local/bin/g++-4.2
export PATH=$HOME/bin:$PATH
eval "$(rbenv init -)"

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true

# Only load if not already loaded
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
  . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi

export PS1='\[\e[1;32m\]\u@\h \[\e[1;34m\]\w\[\e[0;39m\]\[\e[1;33m\]$(__git_ps1 " (%s)")\[\e[0;39m\]\[\e[0;39m\] '
export PATH=/usr/local/bin:$PATH


##### Aliases #####

# General commands
alias bi="bundle install"
alias be="bundle exec"
alias bu="bundle update"
alias bo="bundle open"

# Rails commands
alias rr="be rails"

alias rrs="rr s"
alias rrsp="rrs -p"

alias rrc="rr c"

alias rrg="rr g"
alias rrgs="rrg scaffold"
alias rrgm="rrg model"
alias rrgc="rrg controller"
alias rrgdm="rrg migration"

alias rrd="rr db"

# Rake commands
alias rk="be rake"

alias rkdr="rk db:reset db:seed"
alias rkds="rk db:setup"
alias rkdm="rk db:migrate"

alias rkr="rk routes"

# SOP commands
alias sopgms="rrg sop_support:model_service"
alias sopggk="rrg sop_support:gate_keeper"
alias sopgsp="rrg sop_support:scope_provider"

# GIT commands
alias gcl="git clone"
alias gco="git checkout"
alias gs="git status"
alias gd="git diff"
alias ga="git add"
alias gaa="ga --all"
alias gc="git commit -m"
alias gca="git commit -a -m"

# Specialized commands
alias gp="be guides preview"
alias payshells="rrsp 3032"
alias payshelld="cd ~/playground/soptraining/sageone_pay_shell/"
alias newworlddoshboxs="rrsp 3033"
alias newworlddoshboxd="cd ~/playground/soptraining/new_world_doshbox/"
alias mysageoned="cd ~/playground/soptraining/mysageone_demo/host_app/"
alias soptrainingd="cd ~/playground/soptraining/"

