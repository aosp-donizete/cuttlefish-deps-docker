#!/bin/bash

set -x

docker build --tag cuttlefish-machine .
docker run -v $(pwd)/out:/out --rm cuttlefish-machine

#sudo dpkg -i ./out/android-cuttlefish/cuttlefish-base_*_*64.deb || sudo apt-get install -f
#sudo dpkg -i ./out/android-cuttlefish/cuttlefish-user_*_*64.deb || sudo apt-get install -f
#sudo usermod -aG kvm,cvdnetwork,render $USER
#sudo reboot