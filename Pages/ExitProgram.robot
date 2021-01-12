*** Settings ***
Library             SikuliLibrary
Resource            ..\\Utils\\SikuliUtils.robot
Resource		    ..\\Utils\\TestUtils.robot
Resource            ..\\Utils\\DateUtils.robot

*** Variables ***
#Picture
${OkBtn1}            OkBtn1.png
${ExitBTn}           ExitBTn.png
${Scroll4}           Scroll4.png
${Start}             Start.png
${Logoff}            Logoff.
${Exit}              Exit.png
${Screen}            Screen.png
    
#Input
${WeightMachineInput}       S01

*** Keywords ***
Exit Program
     Click Button with Sikuli -> ${ExitBTn} timeout ${3} sec.
     Click Button with Sikuli -> ${OkBtn1} timeout ${3} sec.
     Click Button with Sikuli -> ${OkBtn1} timeout ${3} sec.
     # Click Button with Sikuli -> ${Scroll4} timeout ${3} sec.
     Click Button with Sikuli -> ${Start} timeout ${3} sec.
     sleep     1s
     SikuliLibrary.Press Special Key	TAB
     sleep     1s
     SikuliLibrary.Press Special Key	TAB
     sleep     1s
     SikuliLibrary.Press Special Key	ENTER
     # Click Button with Sikuli -> ${Exit} timeout ${3} sec.