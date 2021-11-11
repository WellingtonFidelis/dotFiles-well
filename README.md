# Requirements
### 1. Install some packages to nvim run correctly
´´´
cd ~
sudo apt-get install -y gcc make cmake pkg-config build-essential zip automake m4 libtool-bin gettext fontconfig tree ripgrep python3-venv python3-pip ninja-build
´´´
### 2. Install NodeJs
```
curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
sudo apt-get install -y nodejs
```
### 3. Install some npm packages
```
sudo npm install -g typescript typescript-language-server ls_emmet
```
### 4. Install some Python packages
```
sudo pip3 install 'python-lsp-server[all]'
```
### 5. Install the last Neovim version
```
git clone https://github.com/neovim/neovim.git
cd neovim/
sudo make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
```
Afer install
```
cd ~
sudo rm -rf neovim/
```
### 6. Install de Packer
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

## Optional
### 1. Install Terroo fonts
```
git clone https://github.com/terroo/fonts -b fonts --single-branch
```
Afer install move the fonts to folder local where all the other fonts are installed
```
cd fonts/fonts && mv . $HOME/.local/share/fonts
```
Run follow command to install the new fonts
```
sudo fc-cache -fv
```
After you can delete the reposiory
```
cd ~
sudo rm -rf fonts/
```
