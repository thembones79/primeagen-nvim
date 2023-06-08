### Based on [ThePrimeagen's init.lua](https://github.com/ThePrimeagen/init.lua)

Prerequisite: install [ripgrep](https://github.com/BurntSushi/ripgrep).

## 🛠️ Installation

### Linux/Mac OS (Unix)

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.old
mv ~/.local/share/nvim ~/.local/share/nvim.old
mv ~/.local/state/nvim ~/.local/state/nvim.old
mv ~/.cache/nvim ~/.cache/nvim.old
```

#### Clone the repository

```shell
git clone https://github.com/thembones79/primeagen-nvim.git ~/.config/nvim
```

### Windows (Powershell)

#### Make a backup of your current nvim and nvim-data folder

```pwsh
Rename-Item -Path $env:LOCALAPPDATA\nvim -NewName $env:LOCALAPPDATA\nvim.bak
Rename-Item -Path $env:LOCALAPPDATA\nvim-data -NewName $env:LOCALAPPDATA\nvim-data.bak
```

or

```pwsh
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
```


#### Clone the repository

```pwsh
git clone https://github.com/thembones79/primeagen-nvim.git $env:LOCALAPPDATA\nvim
```

## 📦 Basic Setup

#### Install Packer.nvim

> Unix, Linux Installation

```shell
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

If you use Arch Linux, there is also [an AUR
package](https://aur.archlinux.org/packages/nvim-packer-git/).

> Windows Powershell Installation

```shell
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```


[The full video of ThePrimeagen setting up this repo](https://www.youtube.com/watch?v=w7i4amO_zaE)

