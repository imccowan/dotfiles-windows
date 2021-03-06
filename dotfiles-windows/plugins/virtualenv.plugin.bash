# make sure virtualenvwrapper is enabled if available

[[ `which virtualenvwrapper.sh` ]] && . virtualenvwrapper.sh


function mkvenv {
  about 'create a new virtualenv for this directory'
  group 'virtualenv'

  cwd=`basename \`pwd\``
  mkvirtualenv --distribute $cwd
}


function mkvbranch {
  about 'create a new virtualenv for the current branch'
  group 'virtualenv'

  mkvirtualenv --distribute "$(basename `pwd`)@$(git_prompt_info)"
}

function wovbranch {
  about 'sets workon branch'
  group 'virtualenv'

  workon "$(basename `pwd`)@$(git_prompt_info)"
}

function wovenv {
  about 'works on the virtualenv for this directory'
  group 'virtualenv'

  workon "$(basename `pwd`)"
}
