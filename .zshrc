#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
# cdと同時にlsする
# function cdls(){
#   \cd $1;
#   ls
# }
# alias cd=cdls
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

export PGDATA=/usr/local/var/postgres

eval "$(rbenv init -)"

#rails
alias r='rails'
alias rs='rails server'
alias rr='rails routes'

#git
alias ga='git add -A'
alias gc='git commit'
alias gm='git checkout master'
alias gp='git push origin HEAD'
alias gh='git push heroku master'

