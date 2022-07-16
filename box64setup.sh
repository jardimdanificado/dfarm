sudo apt install git build-essential cmake
git clone https://github.com/ptitSeb/box64.git
cd box64
mkdir build
cmake .. -DRPI4ARM64=1 -DCMAKE_BUILD_TYPE=RelWithDebInfo
make -j4
sudo make install
systemctl restart systemd-binfmt
box64 --version
printf REBOOT-THE-CHROOT-MANUALLY

