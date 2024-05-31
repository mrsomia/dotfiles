# If you come from bash you might have to change your $PATH.
export PATH=$HOME/Library/Python/3.9/bin:$HOME/bin:/usr/local/bin:$PATH

# Start starship
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

# Example aliases
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"

# My aliases
alias ll="ls -lahL"
alias l="exa -lahl --git"
alias lt="exa -lahl --git --tree --git-ignore -I .git --level 2"
alias ltt="exa -lahl --git --tree --git-ignore -I .git"
alias treegi="tree --gitignore"
alias con="tail -40 -f /var/log/system.log"
alias sublime="open -a 'Sublime Text'"
alias subl="open -a 'Sublime Text'"
alias c="code" # require running VSCode's install code command
alias lg="lazygit"

alias sz="source ~/.zshrc"
alias prd="pnpm run dev"
alias nrd="pnpm run dev"
alias nv="nvim"
alias vim="lvim"
alias ff="$HOME/.dotfiles/scripts/ff.sh"
alias fs="$HOME/.dotfiles/scripts/ff.sh"

# Git
alias gs="git status"
alias gl="git log --graph --all --decorate --oneline"
alias gaa="git add -A"
alias gc="git commit"
alias gcam="git commit --all --message"
alias gla="git pull --all"
alias gp="git push"

# Git but stolen from zsh plugin @link https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git
alias g="git"
alias gss="git status --short -b"

alias gd="git diff"

alias gswm="git switch main"
alias gsw="git switch "
alias gswc="git switch -c"

alias gb="git branch"
alias gba="git branch --all"
alias gbd="git branch --delete"
alias gbD="git branch --delete --force"

alias gm="git merge"

alias grba="git rebase --abort"
alias grbc="git rebase --continue"
alias grbi="git rebase --interactive"

alias gll="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --all"

alias gwipe="git reset --hard && git clean --force -df"
alias grhh="git reset --hard"

alias gpr="git pull --rebase"
alias gpf="git push --force-with-lease --force-if-includes"

# Rust based rewrites
alias cat="bat"

# tldr
alias tldrf='tldr --list | fzf --preview "tldr {1}" --preview-window=right,65% | xargs tldr'

# run z
# . /opt/homebrew/etc/profile.d/z.sh
eval "$(zoxide init zsh)"

# For NVM
# export NVM_DIR="$HOME/.nvm"
#   [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
#   [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
# Added after internal homebrew fork installed
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
[[ -d /opt/homebrew/share/zsh/site-functions ]] && fpath+=(/opt/homebrew/share/zsh/site-functions)

export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# Deno
export DENO_INSTALL="/Users/sach/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# Lunarvim
export PATH="$HOME/.local/bin:$PATH"

# Gotta look cool
export EDITOR="lvim"

# Start rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# bun completions
[ -s "/Users/sach/.bun/_bun" ] && source "/Users/sach/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Go
export PATH=$PATH:$HOME/go/bin

eval $(thefuck --alias)
