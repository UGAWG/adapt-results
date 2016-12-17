## Measuring Statistics with Omega_h

To install the `libMeshb` and `omega_h` codes:

```bash
git clone https://github.com/LoicMarechal/libMeshb.git
cd libMeshb
cmake -DCMAKE_INSTALL_PREFIX:PATH=$PWD/install
make install
cd ..
git clone https://github.com/ibaned/omega_h.git
cd omega_h
cmake -DCMAKE_INSTALL_PREFIX:PATH=$PWD/install \
 -DOmega_h_USE_Meshb:BOOL=ON \
 -DMeshb_PREFIX:PATH=$PWD/../libMeshb/install
make install -j 4
cd ..
```

To get the statistics for a given result file:

```bash
???/omega_h/install/bin/ugawg_stats -m cube-linear cube-linear-06.meshb > osh-stats.txt
```
