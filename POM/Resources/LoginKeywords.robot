*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/locator.py

*** Keywords ***
Openmybrowser
    [Arguments]     ${Siteurl}      ${Browser}
    Open Browser    ${Siteurl}      ${Browser}
    Maximize Browser Window
Enter UserName
    [Arguments]     ${username}
    Input Text    ${txt_loginusername}    ${username}
Enter Password
    [Arguments]     ${password}
    Input Text    ${txt_loginpassword}   ${password}
Click Sigiin
    Click Button    ${btn_signin}
CloseMybrowser
    Close Browser
