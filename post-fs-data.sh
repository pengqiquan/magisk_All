#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode
# More info in the main Magisk thread
# This script will be executed in post-fs-data mode

# If you for some reason do not want all your certificates moved from the user store to the system store, you can specify which certificates to move by replacing the * with the name of the certificate; i.e.,

# mv -f /data/misc/user/0/cacerts-added/12abc345.0 $MODDIR/system/etc/security/cacerts




# mv -f /data/misc/user/0/cacerts-added/* $MODDIR/system/etc/security/cacerts  
# chown -R 0:0 $MODDIR/system/etc/security/cacerts

# [ "$(getenforce)" = "Enforcing" ] || exit 0

# default_selinux_context=u:object_r:system_file:s0
# selinux_context=$(ls -Zd /system/etc/security/cacerts | awk '{print $1}')

# if [ -n "$selinux_context" ] && [ "$selinux_context" != "?" ]; then
#     chcon -R $selinux_context $MODDIR/system/etc/security/cacerts      
# else
#     chcon -R $default_selinux_context $MODDIR/system/etc/security/cacerts     
# fi