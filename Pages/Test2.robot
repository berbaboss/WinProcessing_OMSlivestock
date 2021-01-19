*** Settings ***
Library             SikuliLibrary
Resource            ..\\Utils\\SikuliUtils.robot
Resource		    ..\\Utils\\TestUtils.robot
Resource            ..\\Utils\\DateUtils.robot
Resource            ..\\Pages\\Test1.robot

*** Variables ***
#Picture
${PurchasePlan}          PurchasePlan.png
${PurchaseTeam}          PurchaseTeam.png
${WeeklyPlan}            WeeklyPlan.png
${Material}              Material.png
${CatchDate}             CatchDate.png
${AddBtn1}               AddBtn1.png
${SelectBox}             SelectBox.png
${ShrimpFarm}            ShrimpFarm.png
${ShrimpNeed}            ShrimpNeed.png
${SaveBtn}               SaveBtn.png
${SaveBtn1}              SaveBtn1.png
${YesBtn2}               YesBtn2.png
${OkBtn1}                OkBtn1.png
${OkBtn2}                OkBtn2.png
${ExitBTn}               ExitBTn.png
${Question}              Question.png
${SortButton1}           SortButton1.png
${SortButton2}           SortButton2.png
${RequireButton}         RequireButton.png
${DescButton}            DescButton.png
${OkBtn3}                OkBtn3.png
${ClearButton}           ClearButton.png
${Gen2}                  Gen2.png
${test}                  test.png
${SortButton3}           SortButton3.png
${PlanHarvestDate}       PlanHarvestDate.png
${FarmDetail}            FarmDetail.png
${Sequence}              Sequence.png
${Scroll5}               Scroll5.png
${Key}                   Key.png
${RemainWeight}          RemainWeight.png   
${OweWeight}             OweWeight.png
${Scroll6}               Scroll6.png             
${GetPlan2}                         
        
#Input
${WeeklyPlanInput}       202051
${PurchaseTeamInput}     02
${MaterialInput1}        1120025
         

*** Keywords ***
Test2
    ${GetPlan2}    Get Variable Value    ${GetPlan}
    Double Click in Area with Sikuli -> ${PurchasePlan} ${PurchasePlan}
    Input text and Press Enter in ${PurchaseTeam} with -> ${GetPlan2}
    