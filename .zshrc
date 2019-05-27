export PATH="$HOME/.cargo/bin:$HOME/usr/local/opt/openssl/bin:$HOME/.local/bin:$PATH:$HOME/usr/local/Cellar/leiningen/2.8.3/libexec/leiningen-2.8.3-standalone.jar"

export ZSH="/Users/gabrielmachado/.oh-my-zsh"
export ZSH_THEME="dracula"
export TERM=xterm-256color

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="dd/mm/yyyy"

plugins=(
  git elixir hacker-quotes
)

source $ZSH/oh-my-zsh.sh
if [ -f '/Users/gabrielmachado/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/gabrielmachado/Downloads/google-cloud-sdk/path.zsh.inc'; fi

if [ -f '/Users/gabrielmachado/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/gabrielmachado/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="/usr/local/opt/binutils/bin:$PATH"
export PATH="/Users/gabrielmachado/go/bin:$PATH"

export GPG_TTY=$(tty)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

pair () {open vnc://$1.local}

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash
