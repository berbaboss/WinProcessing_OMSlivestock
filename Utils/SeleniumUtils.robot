*** Settings ***
Library		SeleniumLibrary

*** Keywords ***
Scrolldown to bottom
	Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)	
	
Retry click ${locator} and wait until ${expected locator} retry ${times}
	Click Element	${locator}
	Sleep	1s
	${count}=	Get Element Count	${expected locator}
	${times}=	Evaluate	${times} - 1
	Run Keyword If	${times} > 0 and ${count} == 0	Retry click ${locator} and wait until ${expected locator} retry ${times}
  
