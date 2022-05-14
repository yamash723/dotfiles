set -g -x PATH $PATH /opt/homebrew/bin

set fish_theme agnoster

if status is-interactive
    # Commands to run in interactive sessions can go here

    # git
    abbr -a g "cd (ghq root)/(ghq list | peco)"
    abbr -a g-open "code (ghq root)/(ghq list | peco)"
    abbr -a g-root "cd (ghq root)"
    abbr -a g-browse "gh browse"
    abbr -a g-s "git status"
    abbr -a g-pull "git pull"
    abbr -a g-push "git push"

    # chezmoi
    abbr -a chz "chezmoi"
    abbr -a chz-cd "chezmoi cd"
    abbr -a chz-open "code (chezmoi source-path)"
    abbr -a chz-readd "chezmoi re-add"
    abbr -a chz-add "chezmoi add"
    abbr -a chz-apply "chezmoi apply"

    # k8s
    abbr -a k "kubectl"
    abbr -a kg "kubectl get"
    abbr -a kd "kubectl describe"

    # alias
    alias ls='exa --icons --git'
    alias ll='exa -aahl --icons --git'
    alias cat='bat -pp'
    alias less='bat'
end

set fish_plugins theme peco

function fish_user_key_bindings
  bind \cr peco_select_history # Bind for prco history to Ctrl+r
end


test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
