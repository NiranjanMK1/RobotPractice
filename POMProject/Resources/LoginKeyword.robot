*** Settings ***
Library     SeleniumLibrary
Variables   H:/python_own_projects/pythonProject1/RobotPractice/POMProject/PageObjects/Locators.py

*** Keywords ***
Launchbrowser
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login     chrome
    Maximize Browser Window
    Sleep    3
EnterUsername
    [Arguments]     ${username}
    Input Text    ${loginusername}    ${username}

EnterPassword
    [Arguments]     ${Password}
    Input Text    ${loginpassword}     ${Password}
ClickSingin
    Click Button        ${loginbutton}

Verify Sucessfull Login
    Title Should Be    OrangeHRM
        
