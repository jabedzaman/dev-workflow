# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"
plug "zap-zsh/exa"

# Load and initialise completion system
autoload -Uz compinit
compinit

# startship
eval "$(starship init zsh)"
# starship end

# zoxide
eval "$(zoxide init zsh)"
# zoxide end

# aliases
alias cd='z'

# pnpm
export PNPM_HOME="/Users/jabed/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# android sdk
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
# android sdk end

# ngrok completion
eval "$(ngrok completion)"

# mysql
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
