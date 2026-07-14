# ==========================================
# .zshrc - Master Configuration Loader
# ==========================================

# Where my dotfiles are
export DOTFILES="$HOME/.dotfiles"

# Load all configuration files in order
source "$DOTFILES/shell/env.zsh"
source "$DOTFILES/shell/aliases.zsh"
source "$DOTFILES/shell/plugins.zsh"

# Load local secrets if the file exists (Ignored by Git)
if [[ -f ~/.zshrc.local ]]; then
    source ~/.zshrc.local
fi