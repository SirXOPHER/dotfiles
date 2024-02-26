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