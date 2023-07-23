*** Settings ***
Library     SeleniumLibrary
Resource    H:/python_own_projects/pythonProject1/RobotPractice/POM/Resources/LoginKeywords.robot

*** Variables ***
${Browser}      Chrome
${siteurl}      https://s3.ajnaview.net/login
${user}         niranjanumk@gmail.com
${pwd}          welComeajNa91$
${suvlocator}   xpath://div[@role='button']//p[1]

*** Test Cases ***
Login Test
    Openmybrowser    ${siteurl}    ${Browser}
    Sleep   1
    Enter UserName    ${user}
    Enter Password    ${pwd}
    Click Sigiin
    Sleep    5
    Click Element    xpath://div[@role='button']//div[2]/p[2]
    Sleep    5


