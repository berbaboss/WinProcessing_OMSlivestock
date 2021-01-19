*** Settings ***
Library		SikuliLibrary

*** Keywords ***
Input text in ${texField} with -> ${data}
	Wait Until Screen Contain	${texField}	20
	Sleep   1s
	SikuliLibrary.Input text	${texField}	${data}
	
	
Input text and Press Enter in ${texField} with -> ${data}
	Wait Until Screen Contain	${texField}	20
	Click In	${texField}	${texField}
	sleep  0.5s
	SikuliLibrary.Input text	${texField}	${data}
	SikuliLibrary.Press Special Key	ENTER
	
Wait until wanted images is shown
	Sleep	2s
	${isPopupShown}=	Exists	${quitBtn}	0
	Run Keyword If	${isPopupShown}		Click and wait error
	
Click Button with Sikuli -> ${image} timeout ${sec} sec.
	Wait Until Screen Contain	${image}	${sec}
	Click	${image}

Click in Area with Sikuli -> ${area} ${image}
	Wait Until Screen Contain	${area}		20
	Wait Until Screen Contain	${image}	30
	Click In	${area}	${image}
	
Double Click in Area with Sikuli -> ${area} ${image}
	Wait Until Screen Contain	${area}		30
	Wait Until Screen Contain	${image}	30
	Double Click In	${area}	${image}

Double Click in Area with Sikuli and Deleted -> ${area} ${image}
	Wait Until Screen Contain	${area}		30
	Wait Until Screen Contain	${image}	30
	Double Click In	${area}	${image}
	SikuliLibrary.Press Special Key	DELETE
	
Double Click in Area with Sikuli and Deleted then Input Text-> ${area} ${image} with -> ${data}
	Wait Until Screen Contain	${area}		30
	Wait Until Screen Contain	${image}	30
	Double Click In	${area}	${image}
	Sleep  1s
	SikuliLibrary.Press Special Key	DELETE	
	Sleep  0.5s
	SikuliLibrary.Input text	${area}	${data}
	SikuliLibrary.Press Special Key	ENTER

Double Click in Area with Sikuli then Input Text-> ${area} ${image} with the -> ${data}
	Wait Until Screen Contain	${area}		30
	Wait Until Screen Contain	${image}	30
	Double Click In	${area}	${image}
	SikuliLibrary.Press Special Key	DELETE		
	SikuliLibrary.Input text     ${area}	${data}
	SikuliLibrary.Press Special Key	ENTER

Click ${image1} if ${image2} exists
	Sleep	2s
	${imageExists}=	Exists	${image2}	0
	Run Keyword If	${imageExists}		Click Button with Sikuli -> ${image1} timeout 30 sec.	
	
Get text after image ${image name} for another ${wide} pixels
	${text}=	Get text after image ${image name} for another ${wide} pixels with 0
	[Return]	${text}


Get text after image ${image name} for another ${wide} pixels with ${offset}
  	${image reg} =  SikuliLibrary.Get Image Coordinates  ${image name}
  	Highlight Region  ${image reg}  2
  	${new x} =  Evaluate  ${image reg}[0] + ${image reg}[2] + ${offset}
  	${reg} =  Create List  ${new x}  ${image reg}[1]  ${wide}  ${image reg}[3]
  	Highlight Region  ${reg}  2
 	${text} =  SikuliLibrary.Read Text From Region  ${reg}
  	[Return]  ${text}
  
Get text below image ${image name} for another ${height} pixels
  	${image reg} =  SikuliLibrary.Get Image Coordinates  ${image name}
  	${new y} =  Evaluate  ${image reg}[1] + ${image reg}[3]
  	${reg} =  Create List  ${image reg}[0]  ${new y}  ${image reg}[2]  ${height}
  	Highlight Region  ${reg}  2
  	${text} =  SikuliLibrary.Read Text From Region  ${reg}
  	Log to Console  Recognize ${text} from the range
  	[Return]  ${text}
    
Get text above image ${image name} for another ${height} pixels
	Get text below image ${image name} for another ${height} pixels
 	${image reg} =  SikuliLibrary.Get Image Coordinates  ${image name}
 	${new y} =  Evaluate  ${image reg}[1] - ${height}
	${reg} =  Create List  ${image reg}[0]  ${new y}  ${image reg}[2]  ${image reg}[3]
	Highlight Region  ${reg}  2
	${text} =  SikuliLibrary.Read Text From Region  ${reg}
	Log to Console  Recognize ${text} from the range
	[Return]  ${text}

Click below image ${image name} for ${height} pixels
	${image reg} =  SikuliLibrary.Get Image Coordinates  ${image name}
 	${new y} =  Evaluate  ${image reg}[1] + ${image reg}[3]
 	${reg} =  Create List  ${image reg}[0]  ${new y}  ${image reg}[2]  ${height}
 	Highlight Region  ${reg}  2
 	${text}=	SikuliLibrary.Read Text From Region	${reg}
 	Click Region	${reg}  
	
Click above image ${image name} for ${height} pixels
    ${image reg} =  SikuliLibrary.Get Image Coordinates  ${image name}
	${new y} =  Evaluate  ${image reg}[1] - ${height}
	${reg} =  Create List  ${image reg}[0]  ${new y}  ${image reg}[2]  ${image reg}[3]
	Highlight Region  ${reg}  2
	Click Region	${reg} 
 	
Scroll ${directionImg} in ${area} until found ${targetImg}, retry for ${times}
	Wait Until Screen Contain		${area}		${image timeout}
	Click In						${area}		${directionImg}
	${retryTimes}=	Evaluate	${times} - 1
	${isFound}=		Exists		${targetImg}	0
	Run Keyword If	not ${isFound} and ${times} > 0	Scroll ${directionImg} in ${area} until found ${targetImg}, retry for ${retryTimes}

Variable ${first} should be similar to ${second}
	Log to Console  Check the similarity between ${first} and ${second}
	${len} =  Get length  ${first}
  	${len} =  Evaluate  ${len} - 1
  	${miss match count} =  Evaluate  0
  	:For  ${i}  IN RANGE  ${len}
  	\  ${j} =  Evaluate  ${i} + 1
  	\  ${f} =  Get Substring  ${first}  ${i}  ${j}
  	\  ${s} =  Get Substring  ${second}  ${i}  ${j}
  	\  ${temp} =  Evaluate  ${miss match count} + 1
  	\  ${miss match count} =  Set Variable if  ${f} != ${s}  ${temp}  ${miss match count}
  	${ret} =  Set Variable if  ${miss match count} > 1  false  true
  	[Return]  ${ret} 	


