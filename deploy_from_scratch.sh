#!/bin/bash

SSH_TARGET=mdias@huelmo.dcc.uchile.cl

ssh $SSH_TARGET /bin/bash << EOF
# Environment variables
. .profile

# See what is executed and fail on bad exit codes
set -ex

# Download and build
rm -rf menta-pharo-bot
git clone https://github.com/tinchodias/menta-pharo-bot.git --depth=1
cd menta-pharo-bot
./build_all.sh

# Switch to new version
./screen_stop_all.sh
cd ..
rm -rf current
mv menta-pharo-bot current
cd current
./screen_start_all.sh

echo "Deploy SUCCESS"
EOF
