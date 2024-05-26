# Dot Files

These are my dotfiles

## First Steps
- Install some basic packages:
  
  - ```
    sudo dnf install kitty fish tmux snapd python3
    ```
  - ```
    sudo snap install spotify && sudo snap install 1password
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

- Install Zoxide with 
```
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
```
## Building Neovim from Source
- Follow the instructions [here](https://github.com/neovim/neovim/blob/master/BUILD.md).
  

## Cloning the dotfiles
Run the following command in your terminal:
- ```
  chezmoi init git@github.com:benjamin-kruger/dotfiles.git
  ```
- ```
  chezmoi apply -v
  ```
- Run `nvim` to install all plugins automatically
