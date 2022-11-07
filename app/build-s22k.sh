#!/bin/bash
# To build s22k for nice!nano
export ZEPHYR_TOOLCHAIN_VARIANT=zephyr

west build --pristine -b nice_nano_v2 -- -DSHIELD=s22k_left
python3 ../../../uf2conv/uf2conv.py build/zephyr/zmk.hex --family 0xADA52840 --convert --output ../../../Desktop/s22k_left.uf2

west build --pristine -b nice_nano_v2 -- -DSHIELD=s22k_right
python3 ../../../uf2conv/uf2conv.py build/zephyr/zmk.hex --family 0xADA52840 --convert --output ../../../Desktop/s22k_right.uf2