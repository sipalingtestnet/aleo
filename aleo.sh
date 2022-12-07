#!/bin/bash
clear
echo -e "\033[0;33m"
echo "=================================="
echo " ███████ ██████  ████████     ";
echo " ██      ██   ██    ██        ";
echo " ███████ ██████     ██        ";
echo "      ██ ██         ██        ";
echo " ███████ ██         ██    	 ";
echo "=================================="
echo -e "\e[0m"
echo -e '\e[33mNama Project =\e[55m' Aleo 
echo -e '\e[33mKomunitas Kami =\e[55m' Sipaling Testnet
echo -e '\e[33mTelegram Channel =\e[55m' https://t.me/ssipalingtestnet
echo -e '\e[33mTelegram Group =\e[55m' https://t.me/diskusisipalingairdrop
echo -e "\e[0m"
echo "=================================="



sleep 2

echo -e "\e[1m\e[32m1. Updating packages... \e[0m" && sleep 1
# update
cd $HOME
sudo apt-get update -y && sudo apt install git screen

echo -e "\e[1m\e[32m2. Open Port... \e[0m" && sleep 1
ufw allow 22 && ufw allow 4133 && ufw allow 3033 && ufw enable

echo -e "\e[1m\e[32m3. Install Rupstup... \e[0m" && sleep 1
curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env

echo -e "\e[1m\e[32m4. Clone Repository... \e[0m" && sleep 1
git clone https://github.com/AleoHQ/snarkOS.git --depth 1
cd ~/snarkOS

echo -e "\e[1m\e[32m5. Build... \e[0m" && sleep 1
./build_ubuntu.sh

echo -e "\e[1m\e[32m6. Cargo Path Install... \e[0m" && sleep 1
cargo install --path .

echo -e "\e[1m\e[32m7. Create Account Aleo Prover... \e[0m" && sleep 1
snarkos account new

echo '--------------DONO----------------'