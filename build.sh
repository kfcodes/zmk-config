west build -p always -s zmk/app -d build/left -b "nice_nano//zmk" -- \
  -DZMK_CONFIG=/workspaces/zmk-config/config \
  -DSHIELD=cradio_left

west build -p always -s zmk/app -d build/right -b "nice_nano//zmk" -- \
  -DZMK_CONFIG=/workspaces/zmk-config/config \
  -DSHIELD=cradio_right

cp build/left/zephyr/zmk.uf2 ferris_left.uf2
cp build/right/zephyr/zmk.uf2 ferris_right.uf2
ls -lh *.uf2
