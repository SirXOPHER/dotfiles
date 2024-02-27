# ---------
# Functions
# ---------
function colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}

function brew-upgrade-list() {
  bo --json | jq -r '.casks | map(select(.name != "typora")) | map(.name) | join(" ")'
}

function rmhist() { 
  case $1 in 
    --from|from) local start=$2; ;; 
    --last|last) local start=$(($HISTCMD - $2)) ;; 
    *) echo "Try rmhist --from # or rmhist --last n "; return ;; 
  esac; 
  history -d ${start}-${HISTCMD}
}

# From the collection of https://github.com/mathiasbynens/dotfiles/blob/main/.functions

# Create a new directory and enter it
function mkd() {
	mkdir -p "$@" && cd "$_";
}

# Determine size of a file or total size of a directory
function fs() {
	if du -b /dev/null > /dev/null 2>&1; then
		local arg=-sbh;
	else
		local arg=-sh;
	fi
	if [[ -n "$@" ]]; then
		du $arg -- "$@";
	else
		du $arg .[^.]* ./*;
	fi;
}

# `tre` is a shorthand for `tree` with hidden files and color enabled, ignoring
# the `.git` directory, listing directories first. The output gets piped into
# `less` with options to preserve color and line numbers, unless the output is
# small enough for one screen.
function tre() {
	tree -aC -I '.git|node_modules|bower_components' --dirsfirst "$@" | less -FRNX;
}