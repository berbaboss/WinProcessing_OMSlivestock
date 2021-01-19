*** Settings ***
Library             AppiumLibrary    
Resource		    ..\\Pages\\LoginPageOMS.robot
Resource		    ..\\Pages\\Weight_ManualOMS.robot
Resource		    ..\\Pages\\OpenAppOMS.robot
Resource		    ..\\Pages\\ReceiveRawMaterialOMS.robot
Resource		    ..\\Pages\\RawMaterialReportOMS.robot
Resource		    ..\\Pages\\OpenAppVPN.robot
Resource		    ..\\Pages\\LoginVPN.robot
Resource            ..\\Utils\\AppiumUtils.robot


*** Variables ***


*** Test Cases ***
Pulse Secure
    Open App VPN
    Login VPN
    Connect VPN
    Sleep    5s

OMS Live Stock
    Open App OMSLive
    Login OMS Livestock
    Choose Recieve Raw Material OMS
    Create Raw Material Report
    Weight Manual Test

    