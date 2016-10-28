How to Big Red Button on Ubuntu 16.04

1. Download & unzip *bonkers*
    cd ~
    curl -LOk https://github.com/MNoya/bonkers/archive/master.zip
    unzip master.zip
    mv bonkers-master bonkers

2. Install required stuff
    sudo apt install -y libusb-1.0-0 libusb-1.0-0-dev sox libsox-fmt-mp3

3. Permissions
    cd bonkers
    sudo cp doc/99-bonkers.rules /etc/udev/rules.d
    udevadm control --reload-rules

4. Compile and run
    make
    ./home/$USER/bonkers/bonkers -q -c "bash /home/$USER/bonkers/play.sh"

5. (Optional) Add it as an autorun script
    ![img](http://imgur.com/vLB3pnE)