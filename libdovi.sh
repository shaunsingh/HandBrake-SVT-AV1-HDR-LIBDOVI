#!/bin/bash

git clone https://github.com/HandBrake/HandBrake.git
./patch.sh
cargo install cargo-c --features=vendored-openssl

# sudo cp nasm-3.01/nasm /usr/local/bin/nasm && sudo cp nasm-3.01/ndisasm /usr/local/bin/ndisasm

# find: ar...(pass) /usr/bin/ar
# find: cp...(pass) /bin/cp
# find: gm4...(pass) /usr/bin/gm4
# find: mkdir...(pass) /bin/mkdir
# find: gpatch...(pass) /usr/bin/patch
# find: rm...(pass) /bin/rm
# find: ranlib...(pass) /usr/bin/ranlib
# find: strip...(pass) /usr/bin/strip
# find: gtar...(pass) /usr/bin/tar
# find: python3...(pass) /usr/bin/python3
# find: gcc...(pass) /usr/bin/gcc
# find: make...(pass) /usr/bin/make
# find: autoconf...(pass) /Users/shaurizard/.nix-profile/bin/autoconf
# find: automake...(pass) /Users/shaurizard/.nix-profile/bin/automake
# find: libtool...(pass) /usr/bin/libtool
# find: lipo...(pass) /usr/bin/lipo
# find: pkg-config...(pass) /Users/shaurizard/.nix-profile/bin/pkg-config
# find: meson...(pass) /Users/shaurizard/.nix-profile/bin/meson
# find: nasm...(pass) /usr/local/bin/nasm
# find: ninja...(fail)
# find: cmake...(fail))

cd HandBrake

# sudo scripts/mac-toolchain-build /usr/local

./configure --enable-libdovi --launch-jobs=$(sysctl -n hw.activecpu) --launch
