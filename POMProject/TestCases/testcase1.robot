*** Settings ***
Library     SeleniumLibrary
Resource    H:/python_own_projects/pythonProject1/RobotPractice/POMProject/Resources/LoginKeyword.robot
Test Setup      Launchbrowser
Test Template   TC1

*** Test Cases ***          username                Password
Right user empty pwd        admin@yourstore.com     ${Empty}
Right user wrong pwd        admin@yourstore.com      xyz
wrong user wrong pwd        adm@yourstore.com       acd
wrong user right pwd        adm@yourstore.com       admin
wrong user empyt pwd        adm@yourstore.com       ${Empty}

*** Keywords ***
TC1
    [Arguments]     ${username}     ${Password}
    EnterUsername    ${username}
    EnterPassword    ${Password}
    ClickSingin
