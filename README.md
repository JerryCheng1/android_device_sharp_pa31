Device configuration for Sharp SG503SH (PA31)
========================================================

Description
-----------

This repository is for LineageOS 14.1 on Sharp SG503SH (PA31).

How to build LineageOS
----------------------

* Make a workspace:

        mkdir -p ~/lineageos
        cd ~/lineageos

* Initialize the repo:

        repo init -u git://github.com/LineageOS/android.git -b cm-14.1

* Create a local manifest:

        vim .repo/local_manifests/roomservice.xml

        <?xml version="1.0" encoding="UTF-8"?>
        <manifest>
            <!-- Device Tree -->
            <project name="JerryCheng1/android_kernel_sharp_msm8994" path="kernel/sharp/msm8994" remote="github" revision="cm-14.1" />
            <project name="JerryCheng1/android_device_sharp_msm8992-common" path="device/sharp/msm8992-common" remote="github" revision="cm-14.1" />
            <project name="JerryCheng1/android_device_sharp_pa31" path="device/sharp/pa31" remote="github" revision="cm-14.1" />
            <project name="JerryCheng1/android_vendor_sharp_msm8992-common" path="vendor/sharp/msm8992-common" remote="github" revision="cm-14.1" />

            <!-- Dependencies -->
            <project name="LineageOS/android_device_qcom_common" path="device/qcom/common" remote="github" revision="cm-14.1" />
            <project name="LineageOS/android_packages_resources_devicesettings" path="packages/resources/devicesettings" remote="github" revision="cm-14.1" />
            <project name="LineageOS/android_packages_apps_FlipFlap" path="packages/apps/FlipFlap" remote="github" revision="cm-14.1" />
        </manifest>

* Sync the repo:

        repo sync

* Extract vendor blobs

        cd device/sharp/pa31
        ./extract-files.sh

* Setup the environment

        source build/envsetup.sh
        lunch lineage_pa31-userdebug

* Build LineageOS

        mka -j$(nproc --all) bacon
