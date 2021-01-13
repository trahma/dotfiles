alias subl='open -a "Sublime Text"'
alias mux='tmuxinator'
alias compute='doctl compute'
alias droplet='doctl compute droplet'

set fish_git_dirty_color red
set fish_git_not_dirty_color green


function parse_git_branch
  set -l branch (git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/\1/')
  set -l git_diff (git diff)

  if test -n "$git_diff"
    echo (set_color $fish_git_dirty_color)$branch(set_color normal)
  else
    echo (set_color $fish_git_not_dirty_color)$branch(set_color normal)
  end
end


set -x XDEBUG_CONFIG "idekey=VSCODE"
set -x LSCOLORS "ExFxCxDxBxegedabagacad"
set -x HOMEBREW_GITHUB_API_TOKEN "58a705942ade41dbc5ef908ff2befed7584f94c5"
set -x PATH /Users/justin/.composer/vendor/bin $PATH
set -x PATH /Users/justin/.justin/bin $PATH
set -x PATH /Users/justin/bin $PATH
set -x PATH "/Applications/Visual Studio Code.app/Contents/Resources/app/bin" $PATH
set -g fish_user_paths "/usr/local/opt/php@7.3/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/php@7.3/sbin" $fish_user_paths
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

set fish_greeting ""

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

