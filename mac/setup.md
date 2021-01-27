```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew cask install iterm2
brew install fzf
brew install git
brew install zsh
brew install neovim
brew install python
brew install cmake
brew install rbenv
brew install ruby-build
brew install htop
brew install imagemagick
brew install poppler
brew install ghostscript
brew install tnef
brew install redis
brew install rabbitmq
brew install node
brew install yarn
brew install the_silver_searcher
brew cask install chromedriver
brew cask install wkhtmltopdf

# oh my zsh
zsh --version
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
upgrade_oh_my_zsh

# neovim
pip3 install neovim --user
pip3 install --upgrade neovim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
touch ~/.config/nvim/init.vim
nvim ~/.config/nvim/init.vim # fill in the config
cd .config/nvim/plugged/YouCompleteMe
./install.py --clang-completer
ln ~/.config/nvim/init.vim ~/.vimrc

# ruby
rbenv install 2.6.3
rbenv global 2.6.3
gem install bundler
```
