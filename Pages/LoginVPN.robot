*** Settings ***
Library             AppiumLibrary
Resource            ..\\Utils\\AppiumUtils.robot

*** Variables ***
#Value    
${AddConnection}     net.pulsesecure.pulsesecure:id/link_go
${ConnectionName}    //android.widget.EditText[@content-desc="Connection Name"]
${URL}               //android.widget.EditText[@content-desc="URL"] 
${UsernameVPN}       //android.widget.EditText[@content-desc="Username"]
${AddButton1}        //android.widget.Button[@text="Add"]
${ConnectBtn}        //android.widget.Button[@text="Connect"]
${PasswordVPN}       //android.widget.EditText[@text="Password"]
${SigninBtn}         //android.widget.Button[@text="Sign In"]
${ContinueBtn}       //android.view.View[@content-desc="Continue the session"]
${DisconnectBtn}     


#Input
${ConnectionNameInput}     https://ivpn.cpf.co.th/cpfit
${URLInput}                https://ivpn.cpf.co.th/cpfit
${UsernameVPNInput}        rujirot.phu
${PasswordVPNInput}        1100800965041@P

*** Keywords ***
Login VPN
    Click Element with Appium -> ${AddConnection} timeout 10 sec.
    AppiumUtils.Input text in ${ConnectionName} with -> ${ConnectionNameInput}
    AppiumUtils.Input text in ${URL} with -> ${URLInput}
    AppiumUtils.Input text in ${UsernameVPN} with -> ${UsernameVPNInput}
    Click Element with Appium -> ${AddButton1} timeout 10 sec.
    Click Element with Appium -> ${ConnectBtn} timeout 10 sec.
    sleep    5s

Connect VPN
    AppiumUtils.Input text in ${PasswordVPN} with -> ${PasswordVPNInput}
    Sleep    10s
    Click Element with Appium -> ${SigninBtn} timeout 10 sec.
    Click Element with Appium -> ${ContinueBtn} timeout 10 sec.
    
    


    