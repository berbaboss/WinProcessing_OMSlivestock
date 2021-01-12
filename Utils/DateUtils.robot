*** Settings ***
Library  DateTime

*** Variables ***
${date selecter}       		//*[@id="dateSelect-inner"]

*** Keywords ***
Convert to buddhist year from ${datetime}
  ${this year} =  Convert date  ${datetime}  result_format=%Y
  ${adjusted date} =  Convert date  ${datetime}  result_format=%d/%m/
  ${adjusted year} =  Evaluate  ${this year} + 543
  ${adjusted date} =  Catenate  ${adjusted date}${adjusted year}
  [return]  ${adjusted date}
  
Convert to year from ${datetime}
  ${date} =  Convert date  ${datetime}  result_format=%d/%m/%Y
  [return]   ${date}

Set date to tomorrow
# Log to Console  Set Date To Tomorrow
  SeleniumLibrary.Wait until element is enabled  ${date selecter}
  SeleniumLibrary.Clear Element Text  ${date selecter}
  ${today} =  Get current date
  ${tomorrow} =  Add time to date  ${today}  1day
  ${tomorrow} =  Convert to year from ${tomorrow}
  SeleniumLibrary.Input Text  ${date selecter}  ${tomorrow}
  Sleep  2s
  
Get today date
	${today} =  Get current date
	${budish today} =  Convert to year from ${today}
	[return]	${budish today}
	
Get buddhist today
	Get today date
	${today} =  Get current date
	${budish today} =  Convert to buddhist year from ${today}
	[Return]	${budish today}
	
Get buddhist next ${x} day
 	${today} =  Get current date
 	${newday} =  Add time to date  ${today}  ${x}day
 	${budish day} =  Convert to buddhist year from ${newday}
 	[Return]	${budish day}
 	
 Get buddhist date tomorrow
 	${today} =  Get current date
 	${newday} =  Add time to date  ${today}  1day
 	${budish day} =  Convert to buddhist year from ${newday}
 	[Return]	${budish day}	