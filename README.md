```bash
ansible-playbook playbook.yml --ask-become-pass --ask-vault-pass
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
