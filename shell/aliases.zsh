# ==========================================
# Aliases (aliases.zsh)
# ==========================================

# --- Xcode & iOS Development ---
# Delete all Derived Data
alias nuke-dd="rm -rf ~/Library/Developer/Xcode/DerivedData/* && echo 'Derived Data completely nuked!'"

# Clear Swift Package Manager caches
alias nuke-spm="rm -rf ~/Library/Caches/org.swift.swiftpm && rm -rf ~/Library/Developer/Xcode/DerivedData/ModuleCache.noindex && echo 'SPM caches cleared!'"

# Simulator Management
alias sims="xcrun simctl list devices | grep -v 'unavailable'"
alias sims-active="xcrun simctl list devices | grep Booted"
alias sims-wipe="xcrun simctl erase all && echo 'All simulators wiped clean!'"
alias boot-sim="xcrun simctl boot"

# --- Enhanced SSH Aliases ---
alias sshlist="ssh-add -l"
alias sshflush="ssh-add -D"
alias sshconf="nano ~/.ssh/config"
alias sshtest="ssh -v"

# --- Proton Pass (CLI) ---
alias proton-pass="open -a 'Proton Pass.app'"

# --- Proton Pass Shortcuts ---
alias plock="pass-cli session lock && ssh-add -D"
alias punlock="pass-cli session unlock && pass-cli ssh-agent load --vault-name 'Dev'"
alias prefresh="pass-cli ssh-agent load --vault-name 'Dev'"
alias pstatus="pass-cli info"

# --- Utilities ---
# Home
alias home="cd ~"

# Reload shell
alias reload="source ~/.zshrc && echo 'Shell reloaded!'"

# Launch Antigravity IDE
alias code='open -a "Antigravity IDE"'

# Launch the XCode IDE
alias xcode="open -a Xcode ."