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

# --- Proton Pass (CLI) ---
# Launch Proton Pass GUI
alias proton-pass="open -a 'Proton Pass.app'"

# --- Proton Pass Shortcuts ---
alias plock="pass-cli session lock"
alias punlock="pass-cli session unlock"
alias pstatus="pass-cli session status"

# --- Utilities ---
# Home
alias home="cd ~"

# Reload shell
alias reload="source ~/.zshrc && echo 'Shell reloaded!'"

# Launch Antigravity IDE
alias code='open -a "Antigravity IDE"'

# Launch the XCode IDE
alias xcode="open -a Xcode ."