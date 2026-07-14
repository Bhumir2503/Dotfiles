# ==========================================
# Environment Variables (env.zsh)
# ==========================================

# Editor 
export EDITOR='nvim'
export VISUAL='nvim'

# Set language
export LANG=en_US.UTF-8

# Homebrew Path
if [[ -d /opt/homebrew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Add custom bin directories to PATH if needed
export PATH="$HOME/.local/bin:$PATH"