# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# install applications
/opt/homebrew/bin/brew install iterm2
/opt/homebrew/bin/brew install visual-studio-code
/opt/homebrew/bin/brew install raycast
/opt/homebrew/bin/brew install adobe-creative-cloud
/opt/homebrew/bin/brew install logi-options-plus

# install font Fira-Code
/opt/homebrew/bin/brew tap homebrew/cask-fonts
/opt/homebrew/bin/brew install --cask font-fira-code

# setup macOS settings
./macos/settings

# symlink dotfiles
ln -s -f ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -s -f ~/dotfiles/git/.gitconfig ~/.gitconfig
ln -s -f ~/dotfiles/ssh/config ~/.ssh/config
ln -s -f ~/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

# zsh theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# default directories
mkdir -p ~/src
