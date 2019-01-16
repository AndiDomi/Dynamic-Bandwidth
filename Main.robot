*** Setting ***
Library    test.py
Library    Selenium2Library 


*** Variable ***
${Router_URL}    |   http:192.168.0.1
${broswer}    |   chrome
${log_pass_id}    |   id=login_pass
${log_pass}   |    id=domidomi
${log_in_button}   |  id=Login 
${time_to_sleep}   |  1s
${page_to_navigate_1}   |  /Advanced/Virtual_Server_Server.asp? 
${page_to_navigate_2}  |  /Advanced/Traffic_Shaping.asp? 
*** Test Cases ***

    
| Bandwidth automation run
| | Open Browser |  ${Router_URL}   |  ${broswer}
| | Input Password  |   ${log_pass_id}  |  ${log_pass}
| | Click Button  |   ${log_in_button} 
| | Sleep  |  ${time_to_sleep} 
| | Go To |  ${Router_URL}
| | Go To  |   ${Router_URL}
| | Sin Function
    
*** Keyword ***