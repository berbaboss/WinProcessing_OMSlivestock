*** Settings ***
Library             SikuliLibrary
Resource            ..\\Utils\\SikuliUtils.robot
Resource		    ..\\Utils\\TestUtils.robot

*** Variables ***
#Picture
${QAQC}                  QAQC.png
${LabTest}               LabTest.png
${ChooseBtn}             ChooseBtn.png
${BrowseBtn}             BrowseBtn.png
${Arrive}                Arrive.png
${Arrive2}               Arrive2.png
${ArrowUp}               ArrowUp.png
${Select}                Select.png
${ChooseBtn1}            ChooseBtn1.png
${S1}                    S1.png
${S2}                    S2.png
${S3}                    S3.png
${NotDetect}             NotDetect.png
${Pass}                  Pass.png
${Defect}                Defect.png
${Scroll}                Scroll.png
${Scroll1}               Scroll1.png
${Lot}                   Lot.png
${Area2}                 Area2.png
${RawNo}                 RawNo.png
${BrowseBtn}             BrowseBtn.png
${Scroll2}               Scroll2.png
${Semisoft}              Semisoft.png
${SaveBtn}               SaveBtn.png
${YesBtn1}               YesBtn1.png
${OkBtn1}                OkBtn1.png
${ExitBTn}               ExitBTn.png
${SaveBtn1}              SaveBtn1.png
${Pass1}                 Pass1.png
${Pass2}                 Pass2.png
${Picture1}              Picture1.png


#Input
${TimeInput2}             10:00
${TimeInput3}             13:00
${ZealNoInput}            1
${RawCodeInput}           1120025
${AmountInput}            20
${Cre1}                   tub
${Cre2}                   1000
${Cause1Input}            17
${NumberInput}            1

*** Keywords ***
Create Lab Test
     Double Click in Area with Sikuli -> ${QAQC} ${QAQC}
     Double Click in Area with Sikuli -> ${LabTest} ${LabTest}
     Click Button with Sikuli -> ${ChooseBtn} timeout ${3} sec.
     Double Click in Area with Sikuli -> ${Arrive} ${Arrive}
     Double Click in Area with Sikuli -> ${Arrive2} ${ArrowUp}
     Click in Area with Sikuli -> ${Select} ${Select}
     Click Button with Sikuli -> ${ChooseBtn1} timeout ${3} sec.
     Double Click in Area with Sikuli -> ${S1} ${S1}
     Click Button with Sikuli -> ${NotDetect} timeout ${3} sec.
     Click Button with Sikuli -> ${Pass} timeout ${3} sec.
     Click Button with Sikuli -> ${SaveBtn} timeout ${3} sec.
     Click Button with Sikuli -> ${YesBtn1} timeout ${3} sec.
     Click Button with Sikuli -> ${OkBtn1} timeout ${3} sec.
     sleep  1s
     Double Click in Area with Sikuli -> ${S2} ${S2}
     Click Button with Sikuli -> ${NotDetect} timeout ${3} sec.
     Click Button with Sikuli -> ${Pass} timeout ${3} sec.
     Click Button with Sikuli -> ${SaveBtn} timeout ${3} sec.
     Click Button with Sikuli -> ${YesBtn1} timeout ${3} sec.
     Click Button with Sikuli -> ${OkBtn1} timeout ${3} sec.
     sleep  1s
     Double Click in Area with Sikuli -> ${S3} ${S3}
     Click Button with Sikuli -> ${NotDetect} timeout ${3} sec.
     Click Button with Sikuli -> ${Pass} timeout ${3} sec.
     Click Button with Sikuli -> ${SaveBtn} timeout ${3} sec.
     Click Button with Sikuli -> ${YesBtn1} timeout ${3} sec.
     Click Button with Sikuli -> ${OkBtn1} timeout ${3} sec.
     sleep  1s
     Click Button with Sikuli -> ${Pass2} timeout ${3} sec.
     Click Button with Sikuli -> ${SaveBtn1} timeout ${3} sec.
     Click Button with Sikuli -> ${OkBtn1} timeout ${3} sec.
     Click Button with Sikuli -> ${OkBtn1} timeout ${3} sec.
     sleep  1s
     Click Button with Sikuli -> ${ExitBTn} timeout ${3} sec.
     Click Button with Sikuli -> ${OkBtn1} timeout ${3} sec.

Create Defect Test
    Double Click in Area with Sikuli -> ${Defect} ${Defect}
    Click in Area with Sikuli -> ${RawNo} ${BrowseBtn}
    Click in Area with Sikuli -> ${Scroll} ${Scroll2}
    Click in Area with Sikuli -> ${Scroll1} ${Scroll1}
    Double Click in Area with Sikuli -> ${Picture1} ${Picture1}
    sleep  1s
    Double Click in Area with Sikuli -> ${Semisoft} ${Semisoft}
    Click Button with Sikuli -> ${NotDetect} timeout ${3} sec.
    Click Button with Sikuli -> ${Pass} timeout ${3} sec.
    sleep  1s
    Click Button with Sikuli -> ${SaveBtn} timeout ${3} sec.
    Click Button with Sikuli -> ${YesBtn1} timeout ${3} sec.
    Click Button with Sikuli -> ${OkBtn1} timeout ${3} sec.
    sleep  1s
    Click Button with Sikuli -> ${Pass1} timeout ${3} sec.
    Click Button with Sikuli -> ${SaveBtn1} timeout ${3} sec.
     Click Button with Sikuli -> ${SaveBtn1} timeout ${3} sec.
     Click Button with Sikuli -> ${OkBtn1} timeout ${3} sec.
     Click Button with Sikuli -> ${OkBtn1} timeout ${3} sec.
     Click Button with Sikuli -> ${ExitBTn} timeout ${3} sec.
     Click Button with Sikuli -> ${OkBtn1} timeout ${3} sec.
     Double Click in Area with Sikuli -> ${QAQC} ${QAQC}