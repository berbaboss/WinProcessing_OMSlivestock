*** Settings ***
Library             SikuliLibrary
Resource            ..\\Utils\\SikuliUtils.robot
Resource		    ..\\Utils\\TestUtils.robot

*** Variables ***
#Picture
${OrgCode}               OrgCode.png
${PruchaseMenuBtn}       PruchaseMenuBtn.png
${PlusBtn}               PlusBtn.png
${PurchasePlanBtn}       PurchasePlanBtn.png
${MaterialNeed}          MaterialNeed.png 
${AddBtn}                AddBtn.png
${FactoryId}             FactoryId.png 
${KlangFac}              KlangFac.png
${ArrowBtn}              ArrowBtn.png
${MaterialType}          MaterialType.png
${SizeBegin}             SizeBegin.png
${SizeEnd}               SizeEnd.png
${ShrimpType}            ShrimpType.png  
${ShrimpCondition}       ShrimpCondition.png
${Weight}                Weight.png
${Info}                  Info.png
${SaveBtn}               SaveBtn.png
${YesBtn1}               YesBtn1.png
${OkBtn1}                OkBtn1.png
${ExitBTn}               ExitBTn.png

#Input
${FactoryInput}          KLANG
${MaterialInput}         A1
${SizeBeginInput}        20
${SizeEndInput}          30
${ShrimpTypeInput}       01
${ShrimpInput}           21
${WeightInput}           1000
${InfoInput}             Robot Framework Test

*** Keywords ***
Choose OrgCode
    Double Click in Area with Sikuli -> ${OrgCode} ${OrgCode}

Choose Report From Sidebar
    Click in Area with Sikuli -> ${PruchaseMenuBtn} ${PlusBtn}
    Click in Area with Sikuli -> ${PurchasePlanBtn} ${PlusBtn}
    Double Click in Area with Sikuli -> ${MaterialNeed} ${MaterialNeed}
    sleep  2s
Start Create Material Need Report
    Click Button with Sikuli -> ${AddBtn} timeout ${5} sec.
    SikuliLibrary.Press Special Key	ENTER
    sleep  2s
    SikuliLibrary.Input text	${EMPTY}	${FactoryInput}
    Input text and Press Enter in ${MaterialType} with -> ${MaterialInput}
    Input text and Press Enter in ${SizeBegin} with -> ${SizeBeginInput}
    Input text and Press Enter in ${SizeEnd} with -> ${SizeEndInput}
    Input text and Press Enter in ${ShrimpCondition} with -> ${ShrimpInput}
    Input text and Press Enter in ${ShrimpType} with -> ${ShrimpTypeInput}
    Double Click in Area with Sikuli and Deleted then Input Text-> ${Weight} ${Weight} with -> ${WeightInput}
    Input text in ${Info} with -> ${InfoInput}
    Click Button with Sikuli -> ${SaveBtn} timeout ${3} sec.
    Click Button with Sikuli -> ${YesBtn1} timeout ${3} sec.
    Click Button with Sikuli -> ${OkBtn1} timeout ${3} sec.
    sleep  1s
    Click Button with Sikuli -> ${ExitBTn} timeout ${3} sec.
    sleep  2s
    Click Button with Sikuli -> ${ExitBTn} timeout ${3} sec.
    Click Button with Sikuli -> ${OkBtn1} timeout ${3} sec.