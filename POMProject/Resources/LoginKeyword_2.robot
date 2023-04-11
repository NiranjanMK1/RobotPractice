*** Settings ***
Library     SeleniumLibrary
Variables   H:/python_own_projects/pythonProject1/RobotPractice/POMProject/PageObjects/Locators.py

*** Keywords ***
Lanuch Browser
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login  headlesschrome
    Maximize Browser Window
    Sleep    3
Enter Username
    [Arguments]     ${username}
    Input Text    ${loginusername}    ${username}
Enter Password
    [Arguments]     ${password}
    Input Text    ${loginpassword}    ${password}
Click Signin
    [Arguments]
    Click Button    ${loginbutton}