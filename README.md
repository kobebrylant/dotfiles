# dotfiles

Personal configuration files for macOS managed with GNU Stow.

## requirements

git, [stow](https://www.gnu.org/software/stow/), and oh-my-zsh with plugins.

```bash
brew install git stow
```

install oh-my-zsh:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

install powerlevel10k theme:

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

install zsh plugins:

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

## usage

clone repo:

```bash
git clone https://github.com/kobebrylant/dotfiles.git $HOME/dotfiles
cd $HOME/dotfiles
```

backup existing configs (optional):

```bash
mv ~/.zshrc ~/.zshrc.backup
mv ~/.p10k.zsh ~/.p10k.backup
mv ~/.config/kitty ~/.config/kitty.backup
mv ~/.config/nvim ~/.config/nvim.backup
```

create symlinks:

```bash
stow zsh
stow kitty
stow nvim
```

## uninstall

```bash
cd ~/dotfiles
stow -D zsh kitty nvim
```
