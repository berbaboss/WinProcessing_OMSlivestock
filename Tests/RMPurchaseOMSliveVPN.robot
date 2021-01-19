*** Settings ***
Library             SikuliLibrary    
Library             AppiumLibrary    run_on_failure=AppiumLibrary.CapturePageScreenshot
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
Resource		    ..\\Pages\\OpenAppVPN.robot
Resource		    ..\\Pages\\LoginVPN.robot
# Test Setup          TestUtils.Sikuli Test Setup
# Test Teardown	    TestUtils.Sikuli Test Teardown
Resource		    ..\\Pages\\Test1.robot
Resource		    ..\\Pages\\Test2.robot

*** Variables ***
${IMAGE_DIR}      	${CURDIR}\\..\\Images
${x}                0

*** Test Cases ***
Winprocessing UAT
    Add Needed Image Path
    Set Move Mouse Delay    0.15
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
    Stop Sikuli Server	
	SikuliLibrary.Close Application	 	${citrix application}
    
Pulse Secure
    # Open App VPN
    # Login VPN
    # Connect VPN
    # Sleep    10s
    sleep   60s

Android Tablet OMSLivestock
    Open App OMSLive
    Login OMS Livestock
    Choose Recieve Raw Material OMS
    Create Raw Material Report OMS 
    Weight Manual Test
