*** Settings ***
Library     SeleniumLibrary
Resource    H:/python_own_projects/pythonProject1/RobotPractice/POM/Resources/LoginKeywords.robot

*** Variables ***
${Browser}      Chrome
${siteurl}      https://demo.guru99.com/selenium/newtours/
${user}         tutorial
${pwd}          tutorial

*** Test Cases ***
Login Test
    Openmybrowser    ${siteurl}    ${Browser}
    sleep    1
    Enter UserName    ${user}
    Enter Password    ${pwd}
    Click Sigiin
    Click Element    xpath://a[normalize-space()='CONTACT']
    CloseMybrowser

