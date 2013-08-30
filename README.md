dotfiles
========

A place to keep config files so we can share and track them, with a script to symlink them for you. To get this up and running:

1. Fork this repo (so you can make changes for yourself)
1. Clone your fork into ~/dotfiles
1. Add this repo as the upstream branch: `cd ~/dotfiles && git remote add upstream git@github.com:jasonrhodes/dotfiles.git`
1. Pull all latest changes from upstream: `git fetch upstream && git merge upstream/master`
1. Make sure you have bash-completion installed: `brew list | grep bash-completion` if nothing is returned, run: `brew install bash-completion` (don't worry about what it tells you to put in your .bash_profile, it's already there)
1. Make the symlink script executable: `chmod +x ~/dotfiles/symlink.sh`
1. Run the symlink.sh script: `~/dotfiles/symlink.sh`

## Current dotfiles included

### .bash_profile

Bash configuration file loaded on every terminal session. If you make a change here, make sure you run `source ~/.bash_profile` to reload it. Things that go here are bash aliases, $PATH definition, bash prompt setup, etc.

### .gitconfig

User-level configuration file for all things git. Anything you would normally add with `git config --global --add key.subkey value` can be added in the .gitconfig file as:

```
[key] 
	subkey = value
```

We currently set up user config (**which you should change to be your own user/email**), color ui turned on, and git aliases.