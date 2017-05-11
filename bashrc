. ~/Library/src/dotfiles/bash/env
. ~/Library/src/dotfiles/bash/config
. ~/Library/src/dotfiles/bash/aliases
. ~/Library/src/dotfiles/bash/bashmarks.sh
. ~/Library/src/dotfiles/bash/hs.sh
. /usr/local/opt/chruby/share/chruby/auto.sh

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
