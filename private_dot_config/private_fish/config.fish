set -g -x PATH $PATH /opt/homebrew/bin
if status is-interactive
    # Commands to run in interactive sessions can go here
    abbr -a g "cd (ghq root)/(ghq list | peco)"
end

set fish_plugins theme peco

function fish_user_key_bindings
  bind \cr peco_select_history # Bind for prco history to Ctrl+r
end

