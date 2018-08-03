#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"
