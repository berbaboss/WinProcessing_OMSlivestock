*** Settings ***
Library             SikuliLibrary
Resource            ..\\Utils\\SikuliUtils.robot
Resource		    ..\\Utils\\TestUtils.robot

*** Variables ***
#Picture
${PlusBtn}               PlusBtn.png
${PurchasePlanBtn}       PurchasePlanBtn.png
${OrderMenu}             OrderMenu.png
${CatchConfirm}          CatchConfirm.png
${RecordCatchConfirm}    RecordCatchConfirm.png
${ReferCatchPlan}        ReferCatchPlan.png
${CatchTeam}             CatchTeam.png
${PurchasePerson}        PurchasePerson.png
${CatchPerson}           CatchPerson.png
${AddBtn2}               AddBtn2.png
${PlateLin}              PlateLin.png
${File}                  File.png
${PlateLin1}             PlateLin1.png
${ArrowBtn}              ArrowBtn.png
${Weight}                Weight.png
${SaveBtn2}              SaveBtn2.png
${YesBtn1}               YesBtn1.png
${Klang}                 Klang.png
${RoundNo}               RoundNo.png
${Cause}                 Cause.png
${OkBtn2}                OkBtn2.png
${ExitBtn}               ExitBtn.png
${SaveBtn1}              SaveBtn1.png
${BrowseBtn}             BrowseBtn.png
${ReportDate}            ReportDate.png
${Descending}            Descending.png
${Execute}               Execute.png
${ArrowBtn1}             ArrowBtn1.png
${OkBtn3}                OkBtn3.png
${ExitBtn1}              ExitBtn1.png
${OkBtn5}                OkBtn5.png
        
#Input
${ReferCatchPlanInput}   KPL6300027       
${CatchTeamInput}        2000006196 
${PurchasePersonInput}   TEST     
${CatchPersonInput}      TEST
${WeightInput}           1000
${RoundNoInput}          1
${CauseInput}            17
${Choice}               490610.png

*** Keywords ***
Create Catch Confirm Report
    Click in Area with Sikuli -> ${PurchasePlanBtn} ${PlusBtn}
    Click in Area with Sikuli -> ${OrderMenu} ${PlusBtn}
    Double Click in Area with Sikuli -> ${CatchConfirm} ${CatchConfirm}
    Wait Until Screen Contain	${RecordCatchConfirm}		20
    Double Click in Area with Sikuli -> ${RecordCatchConfirm} ${RecordCatchConfirm}
    Click in Area with Sikuli -> ${ReferCatchPlan} ${BrowseBtn}
    Click in Area with Sikuli -> ${ReportDate} ${ReportDate}
    Click in Area with Sikuli -> ${Descending} ${Descending}
    Click Button with Sikuli -> ${Execute} timeout ${3} sec.
    Double Click in Area with Sikuli -> ${ArrowBtn1} ${ArrowBtn1}
    sleep    1s
    SikuliUtils.Input text in ${CatchTeam} with -> ${CatchTeamInput}
    sleep    0.5s
    SikuliUtils.Input text in ${PurchasePerson} with -> ${PurchasePersonInput}
    sleep    0.5s
    SikuliUtils.Input text in ${CatchPerson} with -> ${CatchPersonInput}
    Click Button with Sikuli -> ${AddBtn2} timeout ${3} sec.
    Double Click in Area with Sikuli -> ${Klang} ${Klang}
    Click in Area with Sikuli -> ${PlateLin} ${File}
    Double Click in Area with Sikuli -> ${PlateLin1} ${ArrowBtn}
    SikuliUtils.Input text in ${RoundNo} with -> ${RoundNoInput}
    Double Click in Area with Sikuli and Deleted then Input Text-> ${Weight} ${Weight} with -> ${WeightInput}
    SikuliUtils.Input text and Press Enter in ${Cause} with -> ${CauseInput}
    sleep  1s
    Click Button with Sikuli -> ${SaveBtn2} timeout ${3} sec.
    Click Button with Sikuli -> ${YesBtn1} timeout ${3} sec.
    click Button with Sikuli -> ${OkBtn2} timeout ${3} sec.
    Click Button with Sikuli -> ${ExitBtn1} timeout ${3} sec.
    sleep  3s
    Click Button with Sikuli -> ${SaveBtn1} timeout ${3} sec.
    sleep  1s
    click Button with Sikuli -> ${OkBtn2} timeout ${3} sec. 
    sleep  1s
    click Button with Sikuli -> ${OkBtn2} timeout ${3} sec.
    sleep  1s
    click Button with Sikuli -> ${OkBtn2} timeout ${3} sec. 
    Click Button with Sikuli -> ${ExitBtn} timeout ${3} sec.
    Click Button with Sikuli -> ${OkBtn2} timeout ${3} sec.
    Double Click in Area with Sikuli -> ${CatchConfirm} ${CatchConfirm}
   