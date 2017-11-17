1. settings.gradle
  * shows which subdirectories hold their own subprojects
2. The ***apply*** functionality in Gradle adds the Android plug-in to the build system,which enables the ***android*** section Domain Specific Language(DSL).
3. Note that the ***-v7*** means support for Android applications back to version 7 of Android, not version 7 of the support library itself.
4. ***compileSdkVersion*** and ***ToolsVersion*** should be assigned to the most recent available version, as they are backward compatible and include all current bug fixes.
5. ***versionName*** normally in the form of a &lt;major&gt;.&lt;minor&gt;.&lt;version&gt; string.
6. The ***minSdkVersion*** and ***buildToolsVersion*** properties override the properties specified in the Android Manifest as attributes of a &lt;uses-sdk&gt;.
7. ***gradlew*** (where the ending "w" stands for "wrapper") allow a client to run Gradle without having to install it first.The wrapper uses the gradle-wrapper.jar and the gradle-wrapper.properties files in the gradle/wrapper folder in the appplication root to start the process.
8. If you build files is not called build.gradle, use the ***-b*** flag to specify the build filename.
9. Each dependency is associated with a configuration.Android projects include ***compile, runtime, testCompile, and testRuntime*** configurations.
10. The full syntax for a dependency calls out the ***group, name, and version numbers*** explicitly.
```java
dependencies {
        testCompile 'junit:junit:4.12'
}
```
11. If you want to add a set of files to a configuration without adding them to a repository, you can use the ***files*** and ***fileTree*** syntax inside the dependencies block.
12. You can also ***exclude*** a transitive dependency in the *dependencies* block.
```java
dependencies {
        androidTestCompile('xxx:xxx:xxx') {
            exclude group: 'xxx'
            exclude group: 'xxx'
        }
}
```
13.Gradle build files support property definitions using a simple ***ext*** syntax,the use of ***def*** keyword here implies that this is local variable in the current file.Defining the variable without ***def*** (or any other type) adds the variable as an attribute of the ***project*** object, making it available in this project as well as any of its subprojects.
```java
    ext {
        def AAVersion = '4.0'
    }
```
14.If you don't want to keep the actual values in the build file, instead you add them to the ***gradle.properties*** file in the project root.  
15.Sign an apk using ***signingConfigs*** property.The ***minifyEnabled*** refers to the automatic removal of unused resources in the package app.If true, Gradle also removes resources from dependent libraries if they are not needed. This only works if the ***shrinkResources*** property is also set to true.
```java
android {
        signingConfigs {
            release {
                storeFile file("/xxx/xxx/xx.keystore")
            }
        }
        buildTypes {
            release {
                minifyEnabled true
                shrinkResources true
                signingConfigs signingConfigs.release
            }
        }
}
```
16.By default, the Android plug-in for Gradle supports tow different types of builds: ***debug*** and ***release***.  
17.To declare a product flavor, use the ***productFlavors*** block in the ***android*** closure.Each flavor defines its own source set and resources, which are siblings of the main source set.
```java
android {
        productFlavors {
            xxxx {
                applicationId 'com.example.helloworld.xxx'
            }
        }
}
app/src/xxxx/java
app/src/xxxx/res
```
18.You can use ***flavorDimensions*** to distinguish different versions of your app.The ***flavorDimensions*** tag in the Grale build file listed *attitude* before *client*, which means values from the *attitude* dimension will have higher priority than the *client* dimension.
```java
android{

        flavorDimensions 'attitude', 'client'

        productFlavors {
            xxxx {
                dimension 'attitude'
                applicationId 'com.example.helloworld.xxx'
            }
        }
}
```
19.While string and layout resources in flavors and build types override the corresponding values in the *main* source set, Java classes are different.If you code in the *main* source set refers to a particular class, then each flavor and build type can have its own implementation of that class as long as you don't have on in *main*.Any class referenced by an element in the *main* source set must exist in each flavor.  
20.manifestPlaceholders: 存放在AndroidManifest中定义的变量值
