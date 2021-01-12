*** Settings ***
Library		OperatingSystem
Library  	String


*** Keywords ***
Get text from ${content} with ${regex pattern}
	${filtered text}=	Get Regexp Matches	${content}	${regex pattern}
	[Return]	${filtered text}
	
Read text from ${file}
	${content}=    Get File    ${file}
	[Return]	${content}
	
Write text to ${file} with ${content}
	Create File		${file}		${content}
	
Get random number for ${position count}
	${randomNumber}=	Generate Random String  ${position count}  [NUMBERS]
	[Return]	${randomNumber}