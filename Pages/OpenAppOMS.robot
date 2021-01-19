*** Settings ***
Library             AppiumLibrary

*** Keywords ***
Open App OMSLive
    AppiumLibrary.Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=emulator-5554    appPackage=com.cpfit.oms_livestock    appActivity=com.example.oms_livestock.MainActivity    automationName=Uiautomator2  