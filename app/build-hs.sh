#!/bin/bash
# To build hs22k for nice!nano
export ZEPHYR_TOOLCHAIN_VARIEANT=zephyr
west build -p --board hs22k
python3 ../../../uf2conv/uf2conv.py build/zephyr/zmk.hex --family 0xADA52840 --convert --output ../../../Desktop/hs22k.uf2