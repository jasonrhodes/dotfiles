dotfiles
========

A place to keep config files so we can share and track them, with a script to symlink them for you. To get this up and running:

1. Fork this repo (so you can make changes for yourself)
1. Clone your fork into ~/dotfiles
1. Make the symlink script executable: `chmod +x ~/dotfiles/symlink.sh`
1. Make sure you have bash-completion installed: `brew list | grep bash-completion` if nothing is returned, run: `brew install bash-completion` (don't worry about what it tells you to put in your .bash_profile, it's already there)
