*** Settings ***
Library             AppiumLibrary
Resource            ..\\Utils\\AppiumUtils.robot

*** Variables ***
${PlusButton}            //android.widget.Button[@index="2"]  
${NumberOMS}             //android.widget.EditText[@index="3"]  
${FarmSizeOMS}           //android.widget.EditText[@index="5"]  
${AmountTubOMS}          //android.widget.EditText[@index="9"]  
${ShrimpWeightOMS}       //android.widget.EditText[@index="11"]  
${AddButtonOMS}          //android.view.View[@content-desc="เพิ่ม"]  
${RecordButtonOMS}       //android.view.View[@content-desc="บันทึก"]  
${WeightButtonOMS}       //android.view.View[@content-desc="สั่งชั่ง"]  

${NumberInput}           1
${FarmSizeInput}         25
${AmountTubInput}        20 
${ShrimpWeightInput}     1000
                 
*** Keywords ***
Create Raw Material Report OMS
    Click Element with Appium -> ${PlusButton} timeout 10 sec.
    Click Element with Appium -> ${NumberOMS} timeout 10 sec.
    Sleep   1s
    Press Keycode    8
    Click Element with Appium -> ${FarmSizeOMS} timeout 10 sec.
    Sleep   1s
    Press Keycode    9
    Press Keycode    12
    Click Element with Appium -> ${AmountTubOMS} timeout 10 sec.
    Sleep   1s
    Press Keycode    9
    Press Keycode    7
    Click Element with Appium -> ${ShrimpWeightOMS} timeout 10 sec.
    Sleep   1s
    Press Keycode    8
    Press Keycode    7
    Press Keycode    7
    Press Keycode    7
    Press Keycode    66
    sleep   1s
    Click Element with Appium -> ${AddButtonOMS} timeout 10 sec.
    Click Element with Appium -> ${RecordButtonOMS} timeout 10 sec.
    Click Element with Appium -> ${WeightButtonOMS} timeout 10 sec.
    AppiumLibrary.Go Back
    AppiumLibrary.Go Back
    AppiumLibrary.Go Back



