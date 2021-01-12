*** Settings ***
Library             SikuliLibrary
Resource            ..\\Utils\\SikuliUtils.robot
Resource		    ..\\Utils\\TestUtils.robot
Resource            ..\\Utils\\DateUtils.robot

*** Variables ***
#Picture
${GetRaw}                GetRaw.png
${WeightRecord}          WeightRecord.png
${Show}                  Show.png
${Scroll3}               Scroll3.png
${GreenBtn}              GreenBtn.png
${WeightMachine}         WeightMachine.png
${WeightBtn}             WeightBtn.png
${OkBtn4}                OkBtn4.png
${OkBtn1}            OkBtn1.png
${ExitBTn}           ExitBTn.png

    
#Input
${WeightMachineInput}       S01

*** Keywords ***
Create Send Weight Report
     Double Click in Area with Sikuli -> ${GetRaw} ${GetRaw}
     Double Click in Area with Sikuli -> ${WeightRecord} ${WeightRecord}
     Wait Until Screen Contain	${Show}		20
     Click Button with Sikuli -> ${Show} timeout ${3} sec.
     Click in Area with Sikuli -> ${Scroll3} ${Scroll3}
     Double Click in Area with Sikuli -> ${GreenBtn} ${GreenBtn}
     sleep  1s
     Input text and Press Enter in ${WeightMachine} with -> ${WeightMachineInput}
     Click in Area with Sikuli -> ${WeightBtn} ${WeightBtn}
     Click in Area with Sikuli -> ${OkBtn4} ${OkBtn4}
     Sleep  1s
     Click Button with Sikuli -> ${ExitBTn} timeout ${3} sec.
     Click Button with Sikuli -> ${OkBtn1} timeout ${3} sec.
     