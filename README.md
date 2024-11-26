### Set up instructions

1. First install nvim: `brew install nvim` (don't forget to symlink nvim or add to your $PATH in ~/.zshrc)
2. Then install packer: `git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim` or see [https://github.com/wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
3. Extract the content of this into ~/.config/nvim on your laptop.
```
# ssh
git clone git@github.com:segaokhiria/nvim-setup.git ~/.config/nvim

OR

# https
git clone https://github.com/segaokhiria/nvim-setup.git ~/.config/nvim 
```

4. Install the "Hack Nerd Font" for nvim-tree
```
# brew tap homebrew/cask-fonts <-- This has been deprecated
brew install font-hack-nerd-font
```
Then make sure you set up your terminal to use the nerd font

5. Install `ripgrep`
```
brew install ripgrep
```
6. Install exuberant-ctags (needed for tagbar -- project structure overview)

``` 
brew install ctags
alias ctags="`brew --prefix`/bin/ctags"
alias ctags >> ~/.zprofile
```
7. Ctags variables

Paste the variables below into `~/.ctags`
```
--recurse=yes
--exclude=.git
--exclude=BUILD
--exclude=.svn
--exclude=*.js
--exclude=vendor/*
--exclude=node_modules/*
--exclude=db/*
--exclude=log/*
--exclude=\*.min.\*
--exclude=\*.swp
--exclude=\*.bak
--exclude=\*.pyc
--exclude=\*.class
--exclude=\*.sln
--exclude=\*.csproj
--exclude=\*.csproj.user
--exclude=\*.cache
--exclude=\*.dll
--exclude=\*.pdb
```

6. Open nvim and run `:PackerSync`


### Invaluable resource for getting set up (mostly for rust)
* [https://rsdlt.github.io/posts/rust-nvim-ide-guide-walkthrough-development-debug/](https://rsdlt.github.io/posts/rust-nvim-ide-guide-walkthrough-development-debug/)
