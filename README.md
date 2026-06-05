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
    ```

4. Set company repository gitconfig:

    ```sh
    git config --global user.name "yan.jiang"
    git config --global user.email "yan.jiang@canonical.com"
    ```

## Config files, bash init

Clone this repos and run `init.sh` (DO NOT use sudo!)
```sh
mkdir ~/repos
git clone git@github.com:jy5275/JYLinuxConfig.git
cd JYLinuxConfig/
./init.sh

echo "ubuntu ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers
```

## Setup GPG key for Canonical

TODO...

## Install packages

```sh
sudo apt update
sudo apt install -y tmux git make docker.io net-tools python3-pip j2cli
sudo snap install go --classic
sudo snap install snapcraft --classic
sudo snap install lxd

# docker config
echo "net.ipv4.conf.all.forwarding=1" | sudo tee /etc/sysctl.d/99-forwarding.conf
systemctl restart systemd-sysctl

sudo groupadd docker
sudo gpasswd -a $USER docker
sudo systemctl restart docker
sudo chmod a+rw /var/run/docker.sock

# LXD config
lxd init --auto
for ipt in iptables iptables-legacy ip6tables ip6tables-legacy; do $ipt --flush; $ipt --flush -t nat; $ipt --delete-chain; $ipt --delete-chain -t nat; $ipt -P FORWARD ACCEPT; $ipt -P INPUT ACCEPT; $ipt -P OUTPUT ACCEPT; done
systemctl reload snap.lxd.daemon
```


## Install v2ray server
https://github.com/233boy/v2ray/wiki/V2Ray%E6%90%AD%E5%BB%BA%E8%AF%A6%E7%BB%86%E5%9B%BE%E6%96%87%E6%95%99%E7%A8%8B


## Repos
```sh
cd ~/repos
git clone git@github.com:jy5275/keep-learning.git
git clone https://github.com/sonic-net/sonic-mgmt.git
git clone --recurse-submodules https://github.com/canonical/sonic-buildimage.git
git clone https://github.com/canonical/switchdevd.git
git clone https://github.com/dmitry-lyfar/spread.git
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
