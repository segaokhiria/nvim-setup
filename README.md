1. First install nvim: `brew install nvim` (don't forget to symlink nvim or add to your $PATH in ~/.zshrc)
2. Then install packer: `git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim` or see [https://github.com/wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
3. Extract the content of this into ~/.config/nvim on your laptop.
```
git clone git@github.com:segaokhiria/nvim-setup.git ~/.config/nvim
```

4. install the lsp servers you need to work with. e.g:
* `gem install ruby-lsp` for ruby
etc

5. Open nvim and run `:PackerSync`


