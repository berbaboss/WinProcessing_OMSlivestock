*** Settings ***
Library             AppiumLibrary


*** Keywords ***
Open App VPN
    AppiumLibrary.Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=emulator-5554    appPackage=net.pulsesecure.pulsesecure    appActivity=net.pulsesecure.pws.ui.PSActivity    automationName=Uiautomator2  