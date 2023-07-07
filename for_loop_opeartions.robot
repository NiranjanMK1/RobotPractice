*** Settings ***
Library     SeleniumLibrary
Library     DataDriver      Login_data.xlsx
Test Template   Invalidlogin1

*** Test Cases ***
TC1
    Execute Java



*** Keywords ***
Invalidlogin1
    [Arguments]     ${username}     ${password}
    Log To Console    ${username}:${password}


