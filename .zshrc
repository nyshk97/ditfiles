# Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Databases
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PGDATA=/usr/local/var/postgres

# Rails
eval "$(rbenv init -)"
alias r='rails'
alias rs='rails server'
alias rr='rails routes'

# Git
alias ga='git add -A'
alias gc='git commit'
alias gm='git checkout master'
alias gp='git push origin HEAD'
alias gh='git push heroku master'
