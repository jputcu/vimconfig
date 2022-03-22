Clone to `~\AppData\Local\nvim` for Windows and `~/.config/nvim` on linux.

Clion
=====

https://www.jetbrains.com/help/idea/using-product-as-the-vim-editor.html
On Windows `$HOME/.ideavimrc`.

FZF
===
For `fzf` on Raspbian, download **ARMv7** release from `https://github.com/junegunn/fzf/releases`
Add `export FZF_DEFAULT_COMMAND='rg --files'` to your `bashrc` file. 

Raspberry
=========
~~~~
sudo apt install snapd
sudo reboot
sudo snap install core
sudo snap install nvim --classic
# sudo apt remove nvim 
~~~~

