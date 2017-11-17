### Commands
1. You can run multiple tasks by separating them by spaces
  * ***./gradlew lint assembleDebug***
2. You can exclude a task by using the ***-x*** flag
  * ***./gradlew assembleDebug -x lintDebug***
3. You can use the ***-P*** argument to set the value of properties.
 * ***./gradlew -Plogin=xxx -Ppassword=xxx assembleDebug*** (login and password are properties)



 * ./gradlew build
 * ./gradlew clean
 * ./gradlew tasks [--all]
 * ./gradlew androidDependencies
 * ./gradlew test
