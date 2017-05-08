. ~/bin/dotfiles/bash/env
. ~/bin/dotfiles/bash/config
. ~/bin/dotfiles/bash/aliases
. ~/bin/dotfiles/bash/bashmarks.sh
. ~/bin/dotfiles/bash/hs.sh

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
