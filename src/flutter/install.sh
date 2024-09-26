#!/bin/sh
set -ue

echo "Install Flutter"

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install -y curl git unzip xz-utils zip libglu1-mesa
apt-get clean
git clone https://github.com/flutter/flutter.git -b stable --depth 1 /flutter
PATH="/flutter/bin:$PATH"
flutter --android-sdk /usr/local/lib/android
yes | flutter doctor --android-licenses
flutter doctor
