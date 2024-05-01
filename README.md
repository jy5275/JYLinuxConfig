# New Platform Setup

## git setup

Source: <https://www.cnblogs.com/cangqinglang/p/12462272.html>

1. Generate two ssh keys

    ```sh
    ssh-keygen -t rsa -C "yanjiangpku@gmail.com"
    # Name: id_rsa_github

    ssh-keygen -t rsa -C "yan.jiang@aiprm.org"
    # Name: id_rsa_aiprm
    ```

2. Upload new Pubkeys to github/gitlab
    > Github SSH Key: <https://github.com/settings/keys>
    >
    > Gitlab SSH Key: <https://gl2.deliverwows.org:10443/-/profile/keys>

3. Setup ssh config. Copy to `~/.ssh/config`:

    ```rust
    Host github.com
        HostName github.com
        User jy5275
        IdentityFile ~/.ssh/id_rsa_github

    Host gl2.deliverwows.org
        HostName gl2.deliverwows.org
        Port 10443
        User yan.jiang
        IdentityFile ~/.ssh/id_rsa_aiprm

    Host gl2.deliverwows.org
        HostName gl2.deliverwows.org
        Port 33899
        User yan.jiang
        IdentityFile ~/.ssh/id_rsa_aiprm
    ```

4. Test authentication:

    ```sh
    ssh -T git@github.com
    ssh -T git@gl2.deliverwows.org -p 33899
    ```

5. Set global gitconfig. Copy to `~/.gitconfig`:

    ```sh
    [core]
        editor = vim
        filemode = false
    [credential]
        helper = store
    [user]
        name = jy5275
        email = yanjiangpku@gmail.com
    [push]
        default = simple
    ```

6. Set company repository gitconfig. Checkout to repository and run:

    ```sh
    git config --local user.name "yan.jiang"
    git config --local user.email "yan.jiang@aiprm.org"
    
    # ====================== OR ======================

    for dir in */; do
        # Navigate into the subdirectory
        cd "$dir" || exit

        # Execute git commands
        git config --local user.name "yan.jiang"
        git config --local user.email "yan.jiang@aiprm.org"

        # Navigate back to the parent directory
        cd ..
    done
    ```

## Config files, bash init, go1.21

Clone this repos and run `init.sh` (DO NOT use sudo!)

## Hosts

For WSL, need to update `C:\Windows\System32\drivers\etc\hosts`, instead of the hosts on WSL!

```sh
sudo chmod a+w /etc/hosts
sudo cat hosts >> /etc/hosts
sudo chmod 644 /etc/hosts
```

## Install necessary softwares

```sh
sudo apt update
sudo apt install -y tmux git make docker.io

# docker permission
sudo groupadd docker
sudo gpasswd -a $USER docker
sudo systemctl restart docker
sudo chmod a+rw /var/run/docker.sock
```


## New Windows Setup

### Overall
- Platform: Chrome, Google Drive, WSL
- IDE: VSCode, (GoLand)
- DevTool: Xshell, Xftp, DBeaver, Postman
- Comm: WeChat, Slack, WhatsApp, Telegram
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