*** Settings ***
Library             SikuliLibrary    run_on_failure=AppiumLibrary.CapturePageScreenshot
Library             AppiumLibrary
Resource            ..\\Utils\\SikuliUtils.robot
Resource		    ..\\Utils\\TestUtils.robot
Resource            ..\\Utils\\AppiumUtils.robot
Resource		    ..\\Pages\\LoginPage.robot
Resource            ..\\Utils\\DateUtils.robot
Resource		    ..\\Pages\\CreateMaterialNeedReport.robot
Resource		    ..\\Pages\\CreateFeedReport.robot
Resource		    ..\\Pages\\CreatePurchasePlan.robot
Resource		    ..\\Pages\\ExitProgram.robot
Resource		    ..\\Pages\\CatchConfirmReport.robot
Resource		    ..\\Pages\\QACheck.robot
Resource		    ..\\Pages\\RawMaterialReport.robot
Resource		    ..\\Pages\\CreateSendWeight.robot
Resource		    ..\\Pages\\CarRideReport.robot
Resource		    ..\\Pages\\LoginPageOMS.robot
Resource		    ..\\Pages\\Weight_ManualOMS.robot
Resource		    ..\\Pages\\OpenAppOMS.robot
Resource		    ..\\Pages\\ReceiveRawMaterialOMS.robot
Resource		    ..\\Pages\\RawMaterialReportOMS.robot
Test Setup          TestUtils.Sikuli Test Setup
Test Teardown	    TestUtils.Sikuli Test Teardown
Resource		    ..\\Pages\\Test1.robot
Resource		    ..\\Pages\\Test2.robot

*** Variables ***
${IMAGE_DIR}      	${CURDIR}\\..\\Images
${x}                0

*** Test Cases ***
Winprocessing UAT
    Open Remote Desktop
    Input Server IP
    Input user password in Remote Desktop 
    Choose OrgCode
    Choose Report From Sidebar
    Start Create Material Need Report
    Choose Feed Report 
    Choose Purchase Plan From Sidebar
    Create Catch Confirm Report
    Create Car Ride Report
    Create Raw Material Report
    Create Lab Test
    Create Defect Test
    Create Send Weight Report
    Exit Program
