*** Settings ***
Library             SikuliLibrary
Resource            ..\\Utils\\SikuliUtils.robot
Resource		    ..\\Utils\\TestUtils.robot

*** Variables ***
#Picture
${StartBtn}              StartBtn.png  
${TexField}              InputText.png
${TexField1}             InputText1.png
${Area1}                 Area1.png
${UsernameInput}         UsernameInput.png
${PasswordInput}         PasswordInput.png
${GoBtn}                 GoBtn.png
${YesBtn}                YesBtn.png
${OkBtn}                 OkBtn.png

#Input
${Username}              rujirot.phu
${Password}              1100800965041@P   
${Input}                 mstsc   
${Input1}                192.168.166.221  


*** Keywords ***
Open Remote Desktop
    Click Button with Sikuli -> ${StartBtn} timeout ${3} sec.
    SikuliUtils.Input text and Press Enter in ${texField} with -> ${Input} 

Input Server IP
    Double Click in Area with Sikuli and Deleted -> ${TexField1} ${TexField1}
    SikuliUtils.Input text and Press Enter in ${texField1} with -> ${Input1}
    Click in Area with Sikuli -> ${Area1} ${YesBtn}  
    sleep     5s
    Click Button with Sikuli -> ${OkBtn} timeout ${5} sec.

Input user password in Remote Desktop   
    SikuliUtils.Input text in ${UsernameInput} with -> ${Username}
    Sleep    1s
    SikuliUtils.Input text in ${PasswordInput} with -> ${Password}
    Click Button with Sikuli -> ${GoBtn} timeout ${3} sec.
