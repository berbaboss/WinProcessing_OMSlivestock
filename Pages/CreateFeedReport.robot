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
Choose Feed Report 
    Double Click in Area with Sikuli -> ${FeedReport} ${FeedReport}
    sleep  2s
    Click Button with Sikuli -> ${AddBtn} timeout ${5} sec.
    Click Button with Sikuli -> ${MaterialType} timeout ${3} sec.
    # sleep  2s
    # ${GetPlan} =     Get text after image ${PlanNo} for another 40 pixels 
    # Log To Console     ${GetPlan}
    sleep  2s
    Input text and Press Enter in ${MaterialType} with -> ${MaterialInput}
    sleep  1s
    Input text and Press Enter in ${Farm} with -> ${FarmInput}
    Input text and Press Enter in ${Sump} with -> ${SumpInput}
    ${Number} =     Get random number for 3
    Input text and Press Enter in ${Gen} with -> ${Number}
    #Input text and Press Enter in ${Gen} with -> ${GenInput}
    Input text and Press Enter in ${AverageSize} with -> ${AverageSizeInput}
    Input text and Press Enter in ${InitialSize} with -> ${InitialSizeInput}
    Input text and Press Enter in ${FinalSize} with -> ${FinalSizeInput}
    Double Click in Area with Sikuli and Deleted then Input Text-> ${Weight1} ${Weight1} with -> ${WeightInput}
    Click Button with Sikuli -> ${SaveBtn} timeout ${3} sec.
    Click Button with Sikuli -> ${YesBtn1} timeout ${3} sec.
    Click Button with Sikuli -> ${OkBtn1} timeout ${3} sec.
    sleep  1s
    Click Button with Sikuli -> ${ExitBTn} timeout ${3} sec.
    sleep  2s
    Click Button with Sikuli -> ${ExitBTn} timeout ${3} sec.
    Click Button with Sikuli -> ${OkBtn1} timeout ${3} sec.
    [Return]    ${Number}
    
