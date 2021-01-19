*** Settings ***
Library             AppiumLibrary
Resource            ..\\Utils\\AppiumUtils.robot
Resource            ..\\Pages\\CarRideReport.robot

*** Variables ***
${RawMaterial}     //android.widget.ImageView[@content-desc="บันทึกใบลงวัตถุดิบ"]  
${FarmChoose}      //android.widget.Button[@content-desc="เลือกฟาร์ม"]  
${Klung1}          //android.view.View[@content-desc="Klung1"]
${SearchBtn}       //android.view.View[@content-desc="ค้นหา"]
${CarNumber1}     
${start}           0
${xpath}           

*** Keywords ***
Choose Recieve Raw Material OMS
    ${CarNumber1}     Get Variable Value    ${CarNumber}    
    Click Element with Appium -> ${RawMaterial} timeout 10 sec.
    Click Element with Appium -> ${FarmChoose} timeout 10 sec.
    Click Element with Appium -> ${Klung1} timeout 10 sec.
    Click Element with Appium -> ${SearchBtn} timeout 10 sec.
    # Click Element with Appium -> ${CarNumber1} timeout 10 sec.
    : FOR    ${start}    IN RANGE   9
    \    Swipe    500    1700    500    700    1000 
    \    ${x}    Run Keyword And Return Status    AppiumLibrary.Page Should Contain Element     //*[contains(@content-desc,'${CarNumber1}')]       
    \    log to console    ${x}
    \    Run Keyword If    '${x}' == 'True'    Exit For Loop
    Click Element with Appium -> //*[contains(@content-desc,'${CarNumber1}')] timeout 10 sec.