*** Settings ***
Library             SikuliLibrary
Resource            ..\\Utils\\SikuliUtils.robot
Resource		    ..\\Utils\\TestUtils.robot
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
Test Setup          TestUtils.Sikuli Test Setup
Test Teardown	    TestUtils.Sikuli Test Teardown

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
        
  

