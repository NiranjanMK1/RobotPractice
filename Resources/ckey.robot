*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
key1
    [Arguments]     ${appurl}      ${mybrowser}
    Open Browser    ${appurl}      ${mybrowser}
    Maximize Browser Window
    ${title}=    Get Title
    [Return]    ${title}
key2
    Close Browser