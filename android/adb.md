# ADB
1. **过滤StrictMode得到违规的具体信息**
adb logcat | grep StrictMode
2. **打印调用堆栈**
Log.d(TAG, Log.getStackTraceString(new Throwable()));
3. **截屏**
screencap /mnt/card/test.png
4. **uiautomatorviewer**
Android/sdk/tools/bin
5. **top activity**
adb shell dumpsys activity | grep 'mFoc'
adb shell dumpsys activity top
6. **list package**
adb shell pm list packages
7. **grant/revoke a permission**
adb shell pm grant com.myapp.mypackagename android.permission.INTERNET
adb shell pm revoke com.myapp.mypackagename android.permission.INTERNET
8. **list all the alarms that have been scheduled**
adb shell dumpsys alarm
9. **list all info about a application**
adb shell dumpsys package com.android.chrome
10.
