Install neovim on Unix/Ubuntu

1. `sudo add-apt-repository ppa:neovim-ppa/unstable`
2. `sudo apt-get update`
3. `sudo apt-get install neovim`



Packages
Rust, Node, Java, Python, Clang_Format, Stylua, Black, Shfmt, Prettierd
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
Restart WSL/Terminal
```
sudo apt install npm -y
sudo apt install default-jre -y
sudo apt install python3 -y && sudo apt install python3-pip -y
sudo apt install clang-format -y
cargo install stylua
sudo snap install black
sudo snap install shfmt
npm install --save-dev --save-exact prettier
sudo snap install ruby --classic
npm install -g neovim
```
