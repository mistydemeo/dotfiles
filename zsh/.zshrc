# otherwise powerline won't be found
export PYTHONPATH=/usr/local/lib/python2.7/site-packages

# activate zsh-powerline
. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

# zsh syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# active zsh completions
autoload -U compinit
compinit
fpath=(/usr/local/share/zsh-completions /usr/local/share/zsh/site-functions $fpath)
