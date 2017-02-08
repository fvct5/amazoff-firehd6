@echo off
echo *************************
echo * Waiting for device... *
echo *************************
adb wait-for-device
adb devices
echo *************************************
echo * Installing Google Now Launcher... *
echo *************************************
::if NOT INSTALLED
adb push com.google.android.launcher.apk /sdcard/Download
adb wait-for-device
adb shell su -c "pm install /sdcard/Download/com.google.android.launcher.apk"
adb wait-for-device
adb shell su -c "rm -f /sdcard/Download/com.google.android.launcher.apk"
::if INSTALLED
adb shell su -c "pm disable com.amazon.firelauncher"
echo *************************************************
echo * Disabling Amazon applications and services... *
echo *************************************************
adb shell su -c "pm disable com.amazon.kindle.kso"
adb shell su -c "pm disable com.amazon.venezia"
adb shell su -c "pm disable com.amazon.kindle.unifiedSearch"
adb shell su -c "pm disable com.amazon.kindle"
adb shell su -c "pm disable com.audible.application.kindle"
adb shell su -c "pm disable com.amazon.tahoe"
adb shell su -c "pm disable com.amazon.kindle.otter.oobe"
adb shell su -c "pm disable com.amazon.kindle.otter.settings"
adb shell su -c "pm disable com.amazon.client.metrics"
adb shell su -c "pm disable com.amazon.device.backup"
adb shell su -c "pm disable com.amazon.device.backup.sdk.internal.library"
adb shell su -c "pm disable com.amazon.platform"
adb shell su -c "pm disable com.amazon.platformsettings"
adb shell su -c "pm disable com.amazon.whisperlink.core.android"
adb shell su -c "pm disable com.amazon.csapp"
adb shell su -c "pm disable com.android.calendar"
adb shell su -c "pm disable com.android.providers.calendar"
adb shell su -c "pm disable com.android.email"
adb shell su -c "pm disable com.amazon.kindle.personal_video"
adb shell su -c "pm disable com.amazon.avod"
adb shell su -c "pm disable com.android.contacts"
adb shell su -c "pm disable com.amazon.windowshop"
adb shell su -c "pm disable com.amazon.cloud9"
adb shell su -c "pm disable com.amazon.cloud9.kids"
adb shell su -c "pm disable com.amazon.cloud9.systembrowserprovider"
adb shell su -c "pm disable com.amazon.ags.app"
adb shell su -c "pm disable com.amazon.mp3"
adb shell su -c "pm disable com.amazon.zico"
adb shell su -c "pm disable com.amazon.photos.importer"
adb shell su -c "pm disable org.mopria.printplugin"
adb shell su -c "pm disable com.amazon.dp.contacts"
adb shell su -c "pm disable com.amazon.dp.fbcontacts"
adb shell su -c "pm disable com.amazon.otaverifier"
adb shell su -c "pm disable com.amazon.geo.client.maps"
adb shell su -c "pm disable com.amazon.geo.mapsv2"
adb shell su -c "pm disable com.amazon.geo.mapsv2.services"
adb shell su -c "pm disable com.amazon.accessorynotifier"
adb shell su -c "pm disable com.amazon.webapp"
adb shell su -c "pm disable com.amazon.ods.kindleconnect"
adb shell su -c "pm disable com.amazon.kor.demo"
adb shell su -c "pm disable com.amazon.alta.h2clientservice"
adb shell su -c "pm disable com.amazon.h2settingsfortablet"
adb shell su -c "pm disable com.amazon.unifiedshare.actionchooser"
adb shell su -c "pm disable com.amazon.unifiedsharefacebook"
adb shell su -c "pm disable com.amazon.unifiedsharefacebook"
adb shell su -c "pm disable com.amazon.unifiedsharegoodreads"
adb shell su -c "pm disable com.amazon.unifiedsharesinaweibo"
adb shell su -c "pm disable com.amazon.unifiedsharetwitter"
adb shell su -c "pm disable com.amazon.acos.providers.UnifiedSettingsProvider"
adb shell su -c "pm disable com.amazon.android.marketplace"
adb shell su -c "pm disable com.amazon.client.metrics.api"
adb shell su -c "pm disable com.amazon.dp.contacts"
adb shell su -c "pm disable com.amazon.dp.fbcontacts"
adb shell su -c "pm disable com.amazon.dp.logger"
adb shell su -c "pm disable com.amazon.kcp.tutorial"
adb shell su -c "pm disable com.amazon.socialplatform"
adb shell su -c "pm disable com.amazon.whisperlink.core.android"
adb shell su -c "pm disable com.amazon.whisperlink.activityview.android"
adb shell su -c "pm disable com.amazon.whisperplay.contracts"
adb shell su -c "pm disable amazon.jackson19"
adb shell su -c "pm disable com.amazon.webview"
adb shell su -c "pm disable com.amazon.webview.chromium"
adb shell su -c "pm disable com.amazon.mw"
adb shell su -c "pm disable com.amazon.mw.sdk"
adb shell su -c "pm disable com.amazon.device.logmanager"
adb shell su -c "pm disable com.amazon.precog"
adb shell su -c "pm disable com.amazon.kindle.rdmdeviceadmin"
adb shell su -c "pm disable com.android.sharedstoragebackup"
echo ********************************************************
echo * Amazon applications and services have been disabled. *
echo ********************************************************
