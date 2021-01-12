*** Settings ***
Resource        TestSettings.robot

*** Keywords ***
Test Setup
	Set Selenium Timeout	${TIMEOUT}
	Set Selenium Speed		${SPEED}

Test Teardown
	Close Browser

ETE Test Setup
	Set Selenium Timeout	${TIMEOUT}
	Set Selenium Speed		${SPEED}
	Add Needed Image Path

Sikuli Test Setup
    Add Needed Image Path
    Set Move Mouse Delay    0.15

Sikuli Test Teardown
	Stop Sikuli Server	
	SikuliLibrary.Close Application	 	${citrix application}
	
ETE Test Teardown
	Close All Browsers
	Stop Sikuli Server	
	SikuliLibrary.Close Application	 	${citrix application}	

Stop Sikuli Server
	Stop Remote Server
	
Add Needed Image Path
    Add Image Path    ${IMAGE_DIR}