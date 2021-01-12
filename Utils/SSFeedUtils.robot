*** Settings ***
Library			SikuliLibrary
Resource        ..\\Utils\\SikuliUtils.robot

*** Variables ***
${errorPopup}				errorPopup.png
${quitBtn}					Quit.png
${exitToolbar}				exitToolbar.png
${exitDialog}				exitDialog.png
${okBtnDialog}				okBtnDialog.png
${scroolDownArea}			scroolDownArea.png
${scroolDown}				scroolDown.png
${searchBoxBtn}				searchBox.png
${findWhat}					findWhat.png
${findWhatwithCursor}		findWhatwithCursor.png
${findWhatButtonArea}		findWhatButtonArea.png
${findWhatfindBtn}			findWhatfindBtn.png
${findWhatOkBtn}			findWhatOkBtn.png
${confirmSaveDialog}		confirmSaveDialog.png
${okBtnDialog}				okBtnDialog.png
${toolbarBtn}				toolbarBtn.png
${toolbarSaveBtn}			toolbarSaveBtn.png


*** Keywords ***
Select data from Master in searchBox -> ${searchBox} with data -> ${dataInput}
	Sleep	1s
	Click in Area with Sikuli -> ${searchBox} ${searchBoxBtn}
	Click in Area with Sikuli -> ${findWhat} ${findWhat}
	SikuliLibrary.Input Text	${findWhatwithCursor}	${dataInput}
	Click in Area with Sikuli -> ${findWhatButtonArea} ${findWhatfindBtn}
	Click in Area with Sikuli -> ${findWhatButtonArea} ${findWhatOkBtn}
	
SS_FEED Save data
	Click in Area with Sikuli -> ${toolbarBtn} ${toolbarSaveBtn}
	Click in Area with Sikuli -> ${confirmSaveDialog} ${okBtnDialog}

Exit program
	Click exit

Exit to window
	Sleep	1s
	${exitBtn}=	Exists	${exitToolbar}	0
	Run Keyword If	${exitBtn}	Click exit and wait
	

Click and wait error
	Click quit on alert popup
	Wait until wanted images is shown
	
Click quit on alert popup
	Wait Until Screen Contain		${quitBtn}	30
	Click							${quitBtn}
		
Click exit and wait
	Click exit
	Exit to window
	
Click exit
	Click Button with Sikuli -> ${exitToolbar} timeout 30 sec.
	Sleep	1s
	Click in Area with Sikuli -> ${exitDialog} ${okBtnDialog}
	
	