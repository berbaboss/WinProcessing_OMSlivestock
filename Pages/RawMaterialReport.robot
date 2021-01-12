*** Settings ***
Library             SikuliLibrary
Resource            ..\\Utils\\SikuliUtils.robot
Resource		    ..\\Utils\\TestUtils.robot

*** Variables ***
#Picture
${GetRaw}                GetRaw.png
${GetRawReport}          GetRawReport.png
${ReferCarNo}            ReferCarNo.png
${BrowseBtn}             BrowseBtn.png
${Time1}                 Time1.png
${Time2}                 Time2.png
${Time3}                 Time3.png
${Time4}                 Time4.png
${Time5}                 Time5.png
${AddBtn}                AddBtn.png
${RawCode}               RawCode.png
${Amount}                Amount.png
${ZealNo}                ZealNo.png
${Cause1}                Cause1.png
${Number}                Number.png
${Tub}                   Tub.png
${Weight2}               Weight2.png
${Space}                 Space.png
${SaveBtn}               SaveBtn.png
${YesBtn1}               YesBtn1.png
${OkBtn1}                OkBtn1.png
${ExitBTn}               ExitBTn.png
${SaveBtn1}              SaveBtn1.png
${OkBtn6}                OkBtn6.png
${Time6}                 Time6.png

#Input
${TimeInput4}             07:00      
${TimeInput5}             08:00
${ZealNoInput}            1
${RawCodeInput}           1120025
${AmountInput}            20
${Cre1}                   tub
${Cre2}                   1000
${Cause1Input}            17
${NumberInput}            1

*** Keywords ***
Create Raw Material Report
    Double Click in Area with Sikuli -> ${GetRaw} ${GetRaw}
    Double Click in Area with Sikuli -> ${GetRawReport} ${GetRawReport}
    Wait Until Screen Contain	${ReferCarNo}		20
    Click in Area with Sikuli -> ${ReferCarNo} ${BrowseBtn}
    Wait Until Screen Contain	${Time1}		20
    Double Click in Area with Sikuli -> ${Time1} ${Time1}
    Double Click in Area with Sikuli and Deleted -> ${Time2} ${Time2}
    Input text in ${Time4} with -> ${TimeInput4}
    sleep  1s
    # Double Click in Area with Sikuli and Deleted then Input Text-> ${Time2} ${Time2} with -> ${TimeInput4}
    Double Click in Area with Sikuli and Deleted -> ${Time6} ${Time3}
     Input text in ${Time5} with -> ${TimeInput5}
    # Double Click in Area with Sikuli and Deleted then Input Text-> ${Time3} ${Time3} with -> ${TimeInput5}
    sleep  1s
    Input text in ${ZealNo} with -> ${ZealNoInput}
    Click Button with Sikuli -> ${AddBtn} timeout ${3} sec.
    Input text and Press Enter in ${Number} with -> ${NumberInput}
    Input text and Press Enter in ${RawCode} with -> ${RawCodeInput}

    Double Click in Area with Sikuli and Deleted then Input Text-> ${Amount} ${Amount} with -> ${AmountInput}
    Input text and Press Enter in ${Tub} with -> ${Cre1}
    Double Click in Area with Sikuli and Deleted then Input Text-> ${Weight2} ${Weight2} with -> ${Cre2}
    Double Click in Area with Sikuli and Deleted then Input Text-> ${Cause1} ${Cause1} with -> ${Cause1Input}
    Click Button with Sikuli -> ${SaveBtn} timeout ${3} sec.
    Click Button with Sikuli -> ${YesBtn1} timeout ${3} sec.
    sleep   1s
    Click Button with Sikuli -> ${OkBtn1} timeout ${3} sec.
    Click Button with Sikuli -> ${ExitBTn} timeout ${3} sec.
    Click Button with Sikuli -> ${SaveBtn1} timeout ${5} sec.
    Click Button with Sikuli -> ${OkBtn1} timeout ${5} sec.
    sleep   5s
    Click Button with Sikuli -> ${OkBtn6} timeout ${3} sec.
    Click Button with Sikuli -> ${OkBtn6} timeout ${3} sec.
    sleep   1s
    Click Button with Sikuli -> ${ExitBTn} timeout ${3} sec.
    Click Button with Sikuli -> ${OkBtn1} timeout ${3} sec.
    Double Click in Area with Sikuli -> ${GetRaw} ${GetRaw}
