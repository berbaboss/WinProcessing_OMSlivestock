*** Settings ***
Library             AppiumLibrary
Resource            ..\\Utils\\AppiumUtils.robot

*** Variables *** 
${Weight_Manual}     //android.widget.ImageView[@content-desc="บันทึกชั่งรับวัตถุดิบ Master Factory"]  
${index}             1
${index1}            0
${index2}            0
${round0}            0
${round1}            0
${round2}            0
${round3}            0
${ChooseBottomOMS}      //android.view.View[@index="3"]  
${Weight20-25}       //android.view.View[@bounds="[16,1518][356,1779]"] 
${Weight25-25}       //android.view.View[@bounds="[404,1518][744,1779]"]
${Weight25-30}       //android.view.View[@bounds="[792,1518][1132,1779]"]
${BackOMS}              //android.view.View[@bounds="[22,88][132,198]"]
${WeightOMS}            //android.widget.EditText[@index="1"]
${AcceptOMS}            //android.view.View[@content-desc="Accept"] 
${ConfirmOMS}           //android.view.View[@content-desc="Confirm received"] 
${YesBtnOMS}            //android.widget.Button[@content-desc="Yes"] 

*** Keywords ***
Weight Manual Test
    Click Element with Appium -> ${Weight_Manual} timeout 10 sec.
    sleep     4 
    Swipe down ${index} in range 10 time
    Click Element with Appium -> ${ChooseBottomOMS} timeout 10 sec.
    sleep    2 
    Click Element with Appium -> ${Weight20-25} timeout 10 sec.
    Click Element with Appium -> ${WeightOMS} timeout 10 sec.
    sleep     1
    Input Value 20 from ${round1} with 10 time and click ${AcceptOMS}
    Press Keycode    66
    sleep     1
    Click Element with Appium -> ${Weight25-25} timeout 10 sec.
    Click Element with Appium -> ${WeightOMS} timeout 10 sec.
    sleep     1
    Input Value 20 from ${round2} with 10 time and click ${AcceptOMS}
    Press Keycode    66
    sleep     1
    Click Element with Appium -> ${Weight25-30} timeout 10 sec.
    Click Element with Appium -> ${WeightOMS} timeout 10 sec.
    Input Value 20 from ${round3} with 10 time and click ${AcceptOMS}
    Press Keycode    66
    sleep    2
    Click Element with Appium -> ${ConfirmOMS} timeout 10 sec.  
    Click Element with Appium -> ${YesBtnOMS} timeout 10 sec.
    sleep    2
    AppiumLibrary.Go Back
    AppiumLibrary.Go Back
    AppiumLibrary.Close Application