*** Settings ***
Library             SikuliLibrary
Resource            ..\\Utils\\SikuliUtils.robot
Resource		    ..\\Utils\\TestUtils.robot

*** Variables ***
#Picture
${RideNo}                RideNo.png
${RideNoRecord}          RideNoRecord.png
${ReferCatchNo}          ReferCatchNo.png
${SaveBtn1}              SaveBtn1.png
${OkBtn2}                OkBtn2.png
${Dropdown}              Dropdown.png
${Arrowdown}             Arrowdown.png
${CatchNo}               CatchNo.png
${FindWhat}              FindWhat.png
${PR}                    PR.png
${ArrowBtn}              ArrowBtn.png
${File}                  File.png
${FindBtn}               FindBtn.png
${Time}                  Time.png
${ExitBtn}               ExitBtn.png
${OrderMenu}             OrderMenu.png
${ReferCatchPlan1}       ReferCatchPlan1.png
${BrowseBtn}             BrowseBtn.png
${ReportDate}            ReportDate.png
${Descending}            Descending.png
${Execute}               Execute.png
${ArrowBtn1}             ArrowBtn1.png
${Refer2}                Refer2

#Input
${ReferCatchNoInput}     KPR6300025
${TimeInput}             12:00

*** Keywords ***
Create Car Ride Report
    Double Click in Area with Sikuli -> ${RideNo} ${RideNo}
    Double Click in Area with Sikuli -> ${RideNoRecord} ${RideNoRecord}
    # Click in Area with Sikuli -> ${ReferCatchNo} ${File}
    # Click in Area with Sikuli -> ${Dropdown} ${Arrowdown}
    # Click in Area with Sikuli -> ${CatchNo} ${CatchNo}
     Wait Until Screen Contain	${ReferCatchPlan1}		20
    Click in Area with Sikuli -> ${ReferCatchPlan1} ${BrowseBtn}
    Click in Area with Sikuli -> ${ReportDate} ${ReportDate}
    Click in Area with Sikuli -> ${Descending} ${Descending}
    Click Button with Sikuli -> ${Execute} timeout ${3} sec.
    Double Click in Area with Sikuli -> ${ArrowBtn1} ${ArrowBtn1}
    # Input text in ${FindWhat} with -> ${ReferCatchNoInput}
    # Click in Area with Sikuli -> ${FindBtn} ${FindBtn}
    # Double Click in Area with Sikuli -> ${PR} ${ArrowBtn}
    Double Click in Area with Sikuli and Deleted then Input Text-> ${Time} ${Time} with -> ${TimeInput}
    Click Button with Sikuli -> ${SaveBtn1} timeout ${3} sec.
    sleep  1s
    click Button with Sikuli -> ${OkBtn2} timeout ${3} sec.
    sleep  1s
    click Button with Sikuli -> ${OkBtn2} timeout ${3} sec.
    sleep  1s
    click Button with Sikuli -> ${OkBtn2} timeout ${3} sec.
    sleep  1s
    Click Button with Sikuli -> ${ExitBtn} timeout ${3} sec.
    sleep  1s
    Click Button with Sikuli -> ${OkBtn2} timeout ${3} sec.
    Double Click in Area with Sikuli -> ${RideNo} ${RideNo}
    Double Click in Area with Sikuli -> ${OrderMenu} ${OrderMenu}