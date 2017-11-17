# ADB
1. **过滤StrictMode得到违规的具体信息**
adb logcat | grep StrictMode
2. **打印调用堆栈**
Log.d(TAG, Log.getStackTraceString(new Throwable()));
4. **截屏**  
screencap /mnt/card/test.png
5. **uiautomatorviewer**
Android/sdk/tools/bin
6. **top activity**
adb shell dumpsys activity | grep 'mFoc'
