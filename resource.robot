***Settings***
Library     AppiumLibrary

*** Variables ***
${TIMEOUT}                      10
${ANDROID_AUTOMATION_NAME}      UIAutomator2
${ANDROID_PLATFORM_NAME}        Android
${ANDROID_APP}                  ${EXECDIR}/app/nuclone.apk
${DEVICE_NAME}                  Moto G5s
${UDID}                         0044581080

*** Keywords ***
Open Nuclone App
    Open Application            http://localhost:4723/wd/hub
    ...                         automationName=${ANDROID_AUTOMATION_NAME}
    ...                         platformName=${ANDROID_PLATFORM_NAME}
    ...                         app=${ANDROID_APP}
    ...                         deviceName=${DEVICE_NAME}
    ...                         udid=${UDID}