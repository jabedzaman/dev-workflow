![katana](https://raw.githubusercontent.com/jabedzaman/dotfiles/main/.wallapers/katana.png)

# dotfiles - my personal dotfiles

### Requirements

- [kdePlasma](https://kde.org/plasma-desktop/)
- [kwin](https://kde.org/kwin/)
- [nvim](https://neovim.io/)
- [zsh](https://www.zsh.org/)
- [oh-my-zsh](https://ohmyz.sh/)
- [kitty](https://sw.kovidgoyal.net/kitty/)
- [neoFetch]()

**Install**

```bash
sudo pacman -S kdeplasma kwin nvim zsh kitty neofetch
```

**Install oh-my-zsh**

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

**Install dotfiles**

```bash
git clone https://github.com/jabedzaman/dotfiles.git
mv dotfiles/.* ~/
```

**Install vim-plug**

```bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

**Install vim plugins**

```bash
nvim +PlugInstall +qall
```

**_Images are subjected to be copyrighted_**
