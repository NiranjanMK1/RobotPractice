
*** Settings ***
Library     SeleniumLibrary



*** Keywords ***
LMB
    [Arguments]     ${appurl}       ${appbrowser}
     Open Browser    ${appurl}      ${appbrowser}
     Maximize Browser Window
     ${title}=   get title
     [Return]   ${title}