# twrp_device_allwinner_T8100
TWRP device tree for Tablet T8100

## Device specification

Basic   | Spec Sheet
-------:|:------------------------
CPU     | QuadCore (4 x 1,5Ghz Cortex-A53)
CHIPSET | Allwinner A100
GPU     | PowerVR GC8300
Memory  | 1GB
Android Version | 10.0
Storage | 16GB
Battery | 4000 mAh
Display | 1280 x 800 pixels IPS
Rear Camera  | 2 MP
Front Camera | 2 MP

## Work?
No tested

## Compile

First checkout minimal twrp with omnirom tree:

```
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-11
repo sync
```

Then add these projects to .repo/manifest.xml:

```xml
<project path="device/allwinner/T8100" name="SamuEDL/twrp_device_allwinner_T8100" remote="github" revision="android-10.0" />
```

Finally execute these:

```
. build/envsetup.sh
lunch omni_T8100-eng
mka recoveryimage ALLOW_MISSING_DEPENDENCIES=true # Only if you use minimal twrp tree.
```

To test it:

```
fastboot boot out/target/product/T8100/recovery.img
```
## Thanks
SebaUbuntu thanks for twrpdtgen

Manuel Carmona for the video that explains how to compile a TWRP. (https://www.youtube.com/watch?v=Y7P_cW22Akw)


