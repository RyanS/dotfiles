. ~/bin/dotfiles/bash/env
. ~/bin/dotfiles/bash/config
. ~/bin/dotfiles/bash/aliases
. ~/bin/dotfiles/bash/bashmarks.sh
. ~/bin/dotfiles/bash/hs.sh

#prompt() {
  #git=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'`
  ##ruby=`~/.rvm/bin/rvm-prompt`
  #if [[ $ruby == 'system' && $git == "" ]]; then
    #return 0
  #fi
  ##if [ $ruby == 'system' ]; then
    ##ruby=""
  ##fi

  #echo -en "\x1B[1;36m"
  #echo -en '----------- '
  #echo -en "\x1B[0;32m"
  #echo -en $git
  ##echo -en " \x1B[0;31m"
  ##echo -en $ruby
  #echo -en "\x1B[m"
  #echo
#}

#parse_git_branch() {
  #echo -en "\e[1;36m"
  #git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/-----------\1------------/'
  #echo -en "\e[m"
#} 

#display_rvm_info() {
  #RUBY_TYPE=`~/.rvm/bin/rvm-prompt i v`
  #if [ 'system' = $RUBY_TYPE ] ; then
    #echo -en " " 
  #else
    #echo -en " "
    #echo -en $RUBY_TYPE
    #echo -en " "
  #fi
#}

#export PROMPT_COMMAND="prompt"
#PS1='\w \$ '

#if [[ -s /Users/ryan/.rvm/scripts/rvm ]] ; then source /Users/ryan/.rvm/scripts/rvm ; fi

#if [ -f `brew --prefix`/etc/bash_completion ]; then
  #. `brew --prefix`/etc/bash_completion
#fi

