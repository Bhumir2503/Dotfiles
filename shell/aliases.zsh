# ==========================================
# Aliases (aliases.zsh)
# ==========================================

# --- Xcode & iOS Development ---
# Delete all Derived Data
alias nuke-dd="rm -rf ~/Library/Developer/Xcode/DerivedData/* && echo 'Derived Data completely nuked!'"

# Clear Swift Package Manager caches
alias nuke-spm="rm -rf ~/Library/Caches/org.swift.swiftpm && rm -rf ~/Library/Developer/Xcode/DerivedData/ModuleCache.noindex && echo 'SPM caches cleared!'"

# Open the current directory in Xcode
alias xcode="open -a Xcode ."

# Simulator Management
alias sims="xcrun simctl list devices | grep -v 'unavailable'"
alias sims-active="xcrun simctl list devices | grep Booted"
alias sims-wipe="xcrun simctl erase all && echo 'All simulators wiped clean!'"
alias boot-sim="xcrun simctl boot"

# --- Utilities ---
# Reload shell
alias reload="source ~/.zshrc && echo 'Shell reloaded!'"

# Launch Antigravity IDE
alias code='open -a "Antigravity IDE"'