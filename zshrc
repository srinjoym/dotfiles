source <(antibody init)
antibody bundle < ~/.zsh_plugins.txt

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  char          # Prompt character
)
export SPACESHIP_PROMPT_ADD_NEWLINE=false
export SPACESHIP_PROMPT_SEPARATE_LINE=false
source ~/.rvm/scripts/rvm 