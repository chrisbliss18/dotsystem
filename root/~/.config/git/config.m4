[alias]
    amend = commit --amend
    branches = branch -a
    lg = log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --
    pre-commit-init = !cp ~/.config/git/pre-commit-config.yaml $(git rev-parse --show-toplevel)/.pre-commit-config.yaml
    remotes = remote -v
    tags = tag -l --sort=version:refname

[advice]
    pushNonFastForward = false
    statusHints = false

[color]
    branch = auto
    diff = auto
    status = auto
    wtf = auto

[core]
    attributesfile = ~/.config/git/attributes
    editor = nvim
    excludesfile = ~/.config/git/ignore
    ignorecase = false
    pager = less -FRX

[credential]
    helper = cache --timeout=3600 --socket=~/.local/share/git/creds.sock

[diff]
    mnemonicprefix = true
    renames = copies
    tool = nvimdiff

[diff "pdf"]
    textconv = pdf2txt

[diff "plist"]
    textconv = plutil -convert xml1 -o -

[difftool]
    prompt = false

[difftool "nvimdiff"]
    cmd = "nvim -d \"$LOCAL\" \"$REMOTE\""

[difftool "vimdiff"]
    cmd = "vim -d \"$LOCAL\" \"$REMOTE\""

[fetch]
    prune = true

[help]
    autocorrect = 30

[merge]
    conflictstyle = diff3
    stat = true
    tool = nvimdiff

[mergetool "nvimdiff"]
    cmd = "nvim -d \"$LOCAL\" \"$REMOTE\""

[mergetool "vimdiff"]
    cmd = "vim -d \"$LOCAL\" \"$REMOTE\""

[pull]
    rebase = true

[push]
    default = current
    followTags = true

[rerere]
    enabled = true

[user]
    email = GIT_EMAIL
    name = Kevin James

[web]
    browser = google-chrome
