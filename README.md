# Dot Files

These are my dotfiles with a brief guide to setting up a new machine with Pop_OS!

## First Steps
- Fresh install of Pop_OS!
- Install Gnome Tweaks from Pop_Shop
- Install [Gnome Shell Extensions](https://extensions.gnome.org/extension/19/user-themes/)
- Install Catppuccin themes by running the following code:
  
  - ```
    git clone https://github.com/Fausto-Korpsvart/Catppuccin-GTK-Theme
    ```
  - ```
    mkdir ~/.icons ~/.themes
    ```
  - ```
    cp -r Catppuccin-GTK-Theme/themes ~/.themes && cp -r Catppuccin-GTK-Theme/icons ~/.icons
    ```
  - Apply the Catppuccin themes in Gnome Tweaks
- Install some basic packages:
  
  - ```
    sudo apt install kitty fish neofetch tmux snapd python3
    ```
  - ```
    sudo snap install spotify && sudo snap install discord && sudo snap install 1password
    ```
  - ```
    sudo snap install chezmoi --classic
    ```
- Make fish the default shell with `chsh -s $(which fish)`
- Generate and add an SSH key for Github
  
  - `ssh-keygen -t ed25519 -C "email@address.com"`
  - `eval "$(ssh-agent -s)"` (if in fish, just `eval "ssh-agent -s"`)
  - `ssh-add ~/.ssh/id_ed25519`
  - Copy the output of `cat ~/.ssh/id_ed25519.pub` into Github
- Install [Starship](https://starship.rs/) with
    ```
    curl -sS https://starship.rs/install.sh | sh  
    ```
- Install [JetBrains Mono Nerdfont](https://www.nerdfonts.com/font-downloads) into `~/.fonts` and run `fc-cache -fv`
## Building Neovim from Source
- Install the prerequisites
  
  ```
  sudo apt-get install ninja-build gettext cmake unzip curl build-essential
  ```
- git clone https://github.com/neovim/neovim
- cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
- sudo make install

## Cloning the dotfiles
Run the following command in your terminal:
- ```
  chezmoi init https://github.com/benjamin-kruger/dotfiles.git
  ```
- ```
  chezmoi apply -v
  ```
- Run `nvim` to install all plugins automatically 
