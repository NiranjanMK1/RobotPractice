*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
*** Variables ***
${OUTPUT_DIR}   H:/python_own_projects/pythonProject1/RobotPractice/writingfile

*** Test Cases ***
Capture and Write Text to File
    Open Browser    https://www.lendingkart.com/   chrome
    Maximize Browser Window
    Sleep    5
    Mouse Over      //span[@title='Products']
    Click Element    //span[@title='MSME Loan']
    
    Sleep    5
    #${captured_text}    Get Text    xpath=//span[@title="Business Loan"]   # Replace with the appropriate locator
    Close Browser

    # Write captured text to a file
    #Create File    ${OUTPUT_DIR}/captured_text.txt   ${captured_text}