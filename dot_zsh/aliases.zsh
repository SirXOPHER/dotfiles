# -------
# Aliases
# -------
alias l='ls -a' # List all files in current directory
alias ll='ls -al' # List all files in current directory in long list format
alias ldir='ls -al | grep ^d' # List all directories in current directory in long list format
alias ctfi='find . -type f | wc -l' # Total number of files in current directory (and subdirs)
alias load='du -hsc *' # Print folder sizes (recursively) and total
alias o='open .' # Open the current directory in Finder
alias clr='clear' # Clear your terminal screen
alias ut='uptime' # Computer uptime
alias week='date +%V' # Get week number

# More convenient navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias ..1='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'

# Confirmation
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
# alias rm='rm -I --preserve-root' # deactivated as it produces illegal option error

# IP addresses
alias ip='dig +short myip.opendns.com @resolver1.opendns.com' # Your public IP address
alias localip='ipconfig getifaddr en0' # Your private network IP address
alias ipv4='curl -4 https://ifconfig.co' # Your public IPv4 address
alias ipv6='curl -6 https://ifconfig.co' # Your public IPv6 address
alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'" # Show active network interfaces

# Homebrew
alias buu='brew update && brew upgrade' # Update Homebrew formulae and upgrade installed ones
alias bo='brew outdated --cask --greedy' # List Homebrew casks with available updates
alias bux='brew upgrade $(brew-upgrade-list)' # Update Homebrew casks (see function)
# Command that will list all formulas that aren't dependents of any other formulas (leaves), and for each of them lists all of its dependencies:
alias bleavedeps='brew leaves | xargs brew deps --formula --for-each | sed "s/^.*:/$(tput setaf 4)&$(tput sgr0)/"'
# Alternate w/o xargs: brew deps --formula --for-each $(brew leaves) | sed "s/^.*:/$(tput setaf 4)&$(tput sgr0)/"

# Miscellaneous
alias dps='docker ps --format "table {{.Names}}\t{{.Status}}"' # List running Docker containers
alias cbr='git branch --show-current' # Show current Git branch
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete" # Recursively delete '.DS_Store' files
alias path='echo -e ${PATH//:/\\n}' # Print each PATH entry on a separate line
alias zshreload='source ~/.zshrc' # reload ZSH
alias grep='grep --color=auto' # colorize `grep` output
alias weather='curl v2.wttr.in'