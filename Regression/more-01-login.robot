*** Settings ***
Library           AppiumLibrary
Library        Collections

*** Variables ***
${REMOTE_URL}     http://localhost:4723/wd/hub
${PLATFORM_NAME_ANDROID}    Android
${DEVICE_NAME_ANDROID}    Medium Phone
${appPackage}     com.minor.pizzacompany.staging
${newCommandTimeout}    2500
${appActivity}    com.minor.pizzacompany.MainActivity
${noReset}        true
${AUTOMATION_NAME}    uiautomator2

*** Test Cases ***
Open Android app
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME_ANDROID}    deviceName=${DEVICE_NAME_ANDROID}    appPackage=${appPackage}    newCommandTimeout=${newCommandTimeout}    appActivity=${appActivity}    noReset=${noReset}     automationName=${AUTOMATION_NAME}
    sleep    3

login
    AppiumLibrary.Wait Until Element Is Visible     xpath=//android.widget.Button[@content-desc="Sign in"]
    AppiumLibrary.Click Element     xpath=//android.widget.Button[@content-desc="Sign in"]
    sleep   3
    AppiumLibrary.Click Element     xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.widget.EditText[1]
    sleep   3
    AppiumLibrary.Input Text        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.widget.EditText[1]       aor.testapptpc@ismilebot.com
    sleep   3
    AppiumLibrary.Click Element     xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.widget.EditText[2]
    sleep   3
    AppiumLibrary.Input Text        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.widget.EditText[2]       Aa123456
    sleep   3
    AppiumLibrary.Click Element     xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View
    sleep   5
    AppiumLibrary.Click Element     xpath=//android.widget.Button[@content-desc="Sign in"]

More
    sleep   3
    AppiumLibrary.Swipe     start_x=977     start_y=2228    offset_x=977    offset_y=2228
    d