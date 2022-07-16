sudo apt install git build-essential cmake
git clone https://github.com/ptitSeb/box64.git
cd box64
mkdir build
cdbuild
cmake .. -DARM_DYNAREC=ON
make
sudo make install
systemctl restart systemd-binfmt
box64 --version
printf REBOOT-THE-SYSTEM-MANUALLY

