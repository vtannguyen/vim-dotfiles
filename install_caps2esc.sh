#!/usr/bin/env bash

mkdir tmp
cd tmp

sudo dnf install git -y

git clone https://gitlab.com/interception/linux/tools interception_tools
git clone https://gitlab.com/interception/linux/plugins/caps2esc

# Build and install interception tools
cd interception_tools
sudo dnf install cmake libevdev-devel systemd-devel yaml-cpp-devel boost-devel g++ -y
cmake -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build

cd build && sudo make install

# Build and install caps2esc
cd ../../caps2esc
cmake -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build
cd build && sudo make install

sudo tee -a /etc/caps2esc.yaml > /dev/null <<EOF
- JOB: "intercept -g \$DEVNODE | caps2esc | uinput -d \$DEVNODE"
  DEVICE:
    EVENTS:
      EV_KEY: [KEY_CAPSLOCK, KEY_ESC]
EOF

sudo tee -a /etc/systemd/system/caps2esc.service > /dev/null <<EOF
[Unit]
Description=caps2esc

[Service]
ExecStart=/usr/bin/nice -n -20 /usr/local/bin/udevmon -c /etc/caps2esc.yaml

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable caps2esc
sudo systemctl start caps2esc

# Clean up
cd ../../../
rm -rf tmp
