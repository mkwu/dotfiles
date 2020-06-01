
for DOTFILE in /Users/mwu/.dotfiles/.{aliases,git,env}; do
 echo $DOTFILE
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done
