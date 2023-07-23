*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${Loginurl}     https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${browser}      chrome

*** Keywords ***
Openmybrowser
    Open Browser    ${Loginurl}     ${browser}
    Maximize Browser Window
Closemybrowser
    Close Browser
enteremail
    [Arguments]     ${emailid}
    Input Text    xpath://input[@id='Email']    ${emailid}
enterpassword
    [Arguments]     ${passowrd}
    Input Text    xpath://input[@id='Password']    ${passowrd}
Clicklogin
    Click Button    xpath://button[@type='submit']
Clicklogout
    Click Link    //a[normalize-space()='Logout']
Verfiypage
    Page Should Contain    Dashboard
Errormessage
    Page Should Contain    Login was unsuccessful