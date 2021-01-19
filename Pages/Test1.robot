*** Settings ***
Library             SikuliLibrary
Resource            ..\\Utils\\SikuliUtils.robot
Resource		    ..\\Utils\\TestUtils.robot
Resource		    ..\\Utils\\RobotUtils.robot
Resource		    ..\\Utils\\DateUtils.robot


*** Variables ***
#Picture
${FeedReport}        FeedReport.png
${AddBtn}            AddBtn.png
${MaterialType}      MaterialType.png
${Farm}              Farm.png
${Sump}              Sump.png
${Gen}               Gen.png
${AverageSize}       AverageSize.png
${InitialSize}       InitialSize.png
${FinalSize}         FinalSize.png
${Weight1}           Weight1.png
${SaveBtn}           SaveBtn.png
${YesBtn1}           YesBtn1.png
${OkBtn1}            OkBtn1.png
${ExitBTn}           ExitBTn.png
${PlanNo}            PlanNo.png
${GetPlan1}                       
  
#Input
${MaterialInput}         A1
${FarmInput}             22-01-014580
${SumpInput}             1
${GenInput}              1
${AverageSizeInput}      25
${InitialSizeInput}      20
${FinalSizeInput}        30
${WeightInput}           1000
      

*** Keywords ***
Test1
    ${GetPlan} =    Get text after image ${PlanNo} for another 40 pixels 
    Set Global Variable    ${GetPlan}
    ${GetPlan1}    Get Variable Value    ${GetPlan}
    Input text in ${MaterialType} with -> ${GetPlan1} 
    Click Button with Sikuli -> ${ExitBTn} timeout ${3} sec.
    sleep  2s
    Click Button with Sikuli -> ${ExitBTn} timeout ${3} sec.
    Click Button with Sikuli -> ${OkBtn1} timeout ${3} sec.
    