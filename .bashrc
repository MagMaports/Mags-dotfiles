#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
[ -r /home/painter/.config/byobu/prompt ] && . /home/painter/.config/byobu/prompt   #byobu-prompt#




# iNiR launcher PATH
case ":$PATH:" in
  *:"/home/painter/.local/bin":*) ;;
  *) export PATH="/home/painter/.local/bin:$PATH" ;;
esac
# end iNiR launcher PATH


# iNiR environment
export INIR_VENV="/home/painter/.local/state/quickshell/.venv"
export ILLOGICAL_IMPULSE_VIRTUAL_ENV="$INIR_VENV"
# Apply terminal color sequences (Material You from wallpaper)
if [ -f ~/.local/state/quickshell/user/generated/terminal/sequences.txt ]; then
  cat ~/.local/state/quickshell/user/generated/terminal/sequences.txt
fi
# end iNiR
