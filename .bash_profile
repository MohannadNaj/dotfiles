export CLICOLOR=1
export PATH="/usr/local/bin:${PATH}"
[[ -s ~/.bashrc ]] && source ~/.bashrc

alias cls=clear
alias gs='git status'
alias gsc='git stash clear'
alias assume-unchanged="git ls-files -z | xargs -0 git update-index --assume-unchanged"
alias no-assume-unchanged="git ls-files -z | xargs -0 git update-index --no-assume-unchanged"
alias au="git ls-files -z | xargs -0 git update-index --assume-unchanged"
alias nau="git ls-files -z | xargs -0 git update-index --no-assume-unchanged"

alias p='"vendor/bin/phpunit" --verbose --no-coverage $*'
alias pf='"vendor/bin/phpunit" --verbose --no-coverage --filter $*'
alias pc='"vendor/bin/phpunit" --verbose $*'
alias wp='warun "(app|tests)/**/*.php" -- "vendor/bin/phpunit" --verbose --no-coverage $*'
alias wpf='warun "(app|tests)/**/*.php" -- "vendor/bin/phpunit" --verbose --no-coverage --filter $*'

alias cda='composer dump-autoload'
alias gitlog='git log --pretty=oneline'
alias cd..="cd .."
alias locate-rebuild="/usr/libexec/locate.updatedb"

export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="~/.composer/vendor/bin:$PATH"
export PATH="/usr/local/opt/php@7.4/bin:$PATH"
export PATH="/usr/local/opt/php@7.4/sbin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/moh/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/moh/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/moh/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/moh/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/moh/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/moh/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/moh/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/moh/Downloads/google-cloud-sdk/completion.bash.inc'; fi

  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
