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
10. The full syntax for a dependency calls out the ***group, name, and version numbers*** explicitly. (testCompile 'junit:junit:4.12')
11. If you want to add a set of files to a configuration without adding them to a repository, you can use the ***files*** and ***fileTree*** syntax inside the dependencies block.




### Comands
1. You can run multiple tasks by separating them by spaces
  * ***./gradlew lint assembleDebug***
2. You can exclude a task by using the ***-x*** flag
  * ***./gradlew assembleDebug -x lintDebug***




 * ./gradlew build
 * ./gradlew clean
 * ./gradlew tasks [--all]
 * ./gradlew androidDependencies
 
