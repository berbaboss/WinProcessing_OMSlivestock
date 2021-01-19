*** Settings ***
Library             AppiumLibrary


*** Keywords ***
Click Element with Appium -> ${path} timeout ${sec} sec.
    AppiumLibrary.Wait Until Page Contains Element    ${path}    ${sec}
    AppiumLibrary.Click Element    ${path}     

Click Text with Appium -> ${text} timeout ${sec} sec.
    AppiumLibrary.Wait Until Page Contains Element    ${text}    ${sec}
    AppiumLibrary.Click Text    ${text}    exact_match=True

Input text and Press Enter in ${texField} with -> ${data}
    AppiumLibrary.Wait Until Page Contains Element    ${texField}    
    AppiumLibrary.Click Element    ${texField}  
    AppiumLibrary.Input Text       ${texField}    ${data}  
    Press Keycode    66

Input text in ${texField} with -> ${data}
    AppiumLibrary.Wait Until Page Contains Element    ${texField}    
    AppiumLibrary.Click Element    ${texField}  
    AppiumLibrary.Input Text       ${texField}    ${data}  

Swipe Up from ${path}
    ${element_size}=    Get Element Size    ${path}
    ${element_location}=    Get Element Location   ${path}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

Swipe Down from ${path}
    ${element_size}=    Get Element Size    ${path}
    ${element_location}=    Get Element Location    ${path}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

Swipe down ${start} in range ${amount} time
    :FOR    ${start}   IN RANGE    ${amount}
    \    Swipe    500    1700    500    700    500  


Swipe up ${amount} time from ${start}
    :FOR    ${start}   IN RANGE    ${amount}
    \    Swipe    500    700    500    1700    500  
    

Swipe left ${amount} time from ${start}
    :FOR    ${start}   IN RANGE    ${amount}
    \    Swipe    200    1200    700    100    500  
    

Swipe right ${amount} time from ${start}
    :FOR    ${start}   IN RANGE    ${amount}
    \    Swipe    700   1200    200    100    500  
    

Input Value 20 from ${start} with ${round} time and click ${Element}
    :FOR    ${start}    IN RANGE    ${round} 
    \    sleep     0.5
    \    Press Keycode    9
    \    Press Keycode    7
    \    Click Element with Appium -> ${Element} timeout 10 sec.

Scroll down until found ${xpath} check with ${x} from ${start}
    : FOR    ${start}    IN RANGE   9
    \    Swipe    500    1700    500    700    1000 
    \    ${x}    Run Keyword And Return Status     AppiumLibrary.Page Should Contain Element   ${xpath}
    \    log    ${x}
    \    Run Keyword If    '${x}' == 'True'    Exit For Loop
    