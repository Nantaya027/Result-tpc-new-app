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

Save Address
    sleep   3
    AppiumLibrary.Click Element     xpath=//android.view.View[@content-desc="Saved Addresses"]
    sleep   3
    AppiumLibrary.Click Element     xpath=//android.view.View[@content-desc="Add new address"]
    sleep   3
    AppiumLibrary.Swipe     start_x=279     start_y=159    offset_x=257    offset_y=159
    sleep   3
    AppiumLibrary.Input Text        xpath=//android.widget.EditText        The parq
    sleep   3
    AppiumLibrary.Click Element     xpath=//android.view.View[@content-desc="The PARQ"]
    sleep   3
    AppiumLibrary.Click Element     xpath=//android.widget.Button[@content-desc="Confirm this address"]
    sleep   3
    AppiumLibrary.Click Element     xpath=//android.widget.Button[@content-desc="Choose this location"]
    sleep   3
    AppiumLibrary.Click Element     xpath=//android.widget.EditText[2]
    sleep   3
    AppiumLibrary.Input Text        xpath=//android.widget.EditText[2]     The parq
    sleep   3
    AppiumLibrary.Swipe     start_x=637     start_y=1446    offset_x=693    offset_y=310
    sleep   3
    AppiumLibrary.Click Element     xpath=//android.widget.Button[@content-desc="Confirm"]
    sleep   3
    AppiumLibrary.Click Element     xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View[1]

logout
    sleep   5
    AppiumLibrary.Click Element     xpath=//android.view.View[@content-desc="Sign out"]
    Close Application
