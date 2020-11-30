
# Mohannad's dotfiles

I had to change my laptop, so I created this repo.



## [Note to self]

Things I did while setting up my new macbook using this repo:

### Assumptions

Setting up this repo assumes:

- `~` directory is `/Users/mohannadnajjar`. User's name is `mohannadnajjar`.

If the user wasn't named `mohannadnajjar`, then simply create a symlink to act like if that's the name:
```
sudo ln -s ~ /Users/mohannadnajjar
```

- Code directories are gonna be in the root directory: `/Code/`.

Since macOS 10.15, the root volume is read-only. However, they offered a workaround.

Creating a symlink in the root directory using **synthetic.conf**. More info about `synthetic.conf` can be found in the manual `man synthetic.conf`

```
touch /etc/synthetic.conf
nano /etc/synthetic.conf
```

Then place the content there in the following format:
```
Code	Users/mohannadnajjar/Code
```
Note: **The tab is important** between the root directory and the path.

References:
- [Creating root-level directories and symbolic links on macOS Catalina](https://derflounder.wordpress.com/2020/01/18/creating-root-level-directories-and-symbolic-links-on-macos-catalina/)

- [Creating a symbolic link/mounting volume at root in Catalina](https://arstechnica.com/civis/viewtopic.php?f=19&t=1459515)

### Cloning the repo

```
git clone https://github.com/mohannadnaj/dotfiles
git submodule init
git submodule update
```

### iTerm2

- Set default shell:
```
chsh -s /bin/zsh
```
- Download oh-my-zsh:
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
- Setting the preferred typing mode:

iTerm2 > Preferences > Profiles > Default > Keys > * Presets.. > Natural Text Editing

- Import [iTerm2 Profile.json](iTerm2 Profile.json) file

- PowerLevel9k Theme:
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
```
```

- Terminal Font

> TODO: Update this to reflect the usage of `nerdfont-complete`


```
brew install fontforge
```
```
fontforge -script font-patcher "path/to/FiraCode/distr/otf/FiraCode-Regular.otf" --powerline --powerlineextra -out ~/Desktop
```
```
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts
```
```
cd /Code/nerd-fonts

fontforge -script font-patcher "path/to/FiraCode/distr/otf/FiraCode-Regular.otf" -c -out ~/Desktop

fontforge -script font-patcher "path/to/FiraCode/distr/otf/FiraCode-Bold.otf" -c -out ~/Desktop
```

Then, Manually install the fonts from the Desktop.

- Extra Resources for Terminal Setup:

1. [iTerm2 + zsh + oh-my-zsh + Material Design The Most Power Full Terminal on macOS](https://medium.com/@rafavinnce/iterm2-zsh-oh-my-zsh-material-design-the-most-power-full-terminal-on-macos-332b1ee364a5)


2. [iTerm2 + Oh My Zsh + Solarized color scheme + Source Code Pro Powerline + Font Awesome + [Powerlevel10k] - (macOS)](https://gist.github.com/kevin-smets/8568070)

```
brew install zsh-syntax-highlighting
```

### Syncing to .dotfiles repo: Create Symlink

```
ln -s /Code/dotfiles/.bashrc ~/.bashrc
ln -s /Code/dotfiles/.bash_profile ~/.bash_profile
ln -s /Code/dotfiles/.gitignore_global ~/.gitignore_global
ln -s /Code/dotfiles/.gitconfig ~/.gitconfig
ln -s /Code/dotfiles/.my.cnf ~/.my.cnf
ln -s /Code/dotfiles/.p10k.zsh ~/.p10k.zsh
ln -s /Code/dotfiles/.zshrc ~/.zshrc
ln -s /Code/dotfiles/.zshrc.pre-oh-my-zsh ~/.zshrc.pre-oh-my-zsh

ln -s /Code/dotfiles/.oh-my-zsh ~/.oh-my-zsh
ln -s /Code/dotfiles/.hushlogin ~/.hushlogin
```