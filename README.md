
For workstation
```bash
ansible-playbook playbook.yml --tags "station" --ask-become-pass --ask-vault-pass
```

For server
```bash
ansible-playbook playbook.yml --tags "server" -i hosts.yml --ask-become-pass
```

The server does not automatically install ssh. If you want it, you'll need to include the `ssh` tag with `--ask-vault-pass`.

```bash
ansible-playbook playbook.yml --tags "server,ssh" -i hosts.yml --ask-become-pass --ask-vault-pass
```


## neovim
Latest stabled version is cloned to ~/projects/neovim/neovim. If a new stable version comes out and you want to use it run:

```bash
sudo dpkg -P neovim

cd ~/projects/neovim/neovim
git checkout stable
make MAKE_BUILD_TYPE=RelWithDebInfo
cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb
```

Or just purge everything and start over.

https://github.com/neovim/neovim/wiki/Building-Neovim for more info

## dpkg

```bash
# install
dpkg -i something.deb

# remove
dpkg -P something
```


