# New Platform Setup

## git setup

Source: <https://www.cnblogs.com/cangqinglang/p/12462272.html>

1. Generate ssh key

    ```sh
    ssh-keygen -t rsa -C "yanjiangpku@gmail.com"
    # Name: id_rsa
    ```

2. GitHub setup
    > Github SSH Key: <https://github.com/settings/keys>
    
    Then test authentication:

    ```sh
    ssh -T git@github.com
    ```

3. Setup ssh config. Copy to `~/.ssh/config`:

    ```rust
    Host github.com
        HostName github.com
        User jy5275
        IdentityFile ~/.ssh/id_rsa
    ```

4. Set company repository gitconfig. Checkout to repository and run:

    ```sh
    git config --local user.name "yan.jiang"
    git config --local user.email "yan.jiang@canonical.org"
    
    # ====================== OR ======================

    for dir in */; do
        # Navigate into the subdirectory
        cd "$dir" || exit

        # Execute git commands
        git config --local user.name "yan.jiang"
        git config --local user.email "yan.jiang@canonical.org"

        # Navigate back to the parent directory
        cd ..
    done
    ```

## Config files, bash init, go1.21

Clone this repos and run `init.sh` (DO NOT use sudo!)
```sh
git clone git@github.com:jy5275/JYLinuxConfig.git
cd JYLinuxConfig/
./init.sh
```

## Setup GPG key for Canonical

TODO...

## Install necessary softwares

```sh
sudo apt update
sudo apt install -y tmux git make docker.io net-tools python3-pip
sudo snap install go --classic

# docker permission
sudo groupadd docker
sudo gpasswd -a $USER docker
sudo systemctl restart docker
sudo chmod a+rw /var/run/docker.sock
```


## New Windows Setup

### Overall
- Platform: Chrome, Dropbox, WSL
- IDE: VSCode, (GoLand)
- DevTool: Xshell, Xftp, Postman
- Comm: WeChat, Mattermost, WhatsApp, Telegram
- Network: Surfshark, V2rayN
- Learning: Eudic, Foxit

### Chrome
- Login to Google Account

### WSL
- Install by cmd `wsl --install`
- Linux Env Setup as above
- Enable SSH access
- Copy Windows Key to `authorized_keys`

### Xshell, Xftp
- Font & Line Cursor
- Hot Key: cpy, paste, search

### VSCode
- Line Cursor
- Extension install

### Eudic
- Dark mode
- My custom dict import
- Hot Key: openwindow
- Launch on start

### Foxit
- Dark mode
