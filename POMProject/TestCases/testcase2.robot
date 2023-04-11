*** Settings ***
Library     SeleniumLibrary
Resource    H:/python_own_projects/pythonProject1/RobotPractice/POMProject/Resources/LoginKeyword_2.robot
Test Setup  Lanuch Browser
Test Teardown   Click Signin
Test Template   Tc1




*** Test Cases ***      username        password
Right user empty pwd        admin@yourstore.com     ${Empty}
Right user wrong pwd        admin@yourstore.com      xyz
wrong user wrong pwd        adm@yourstore.com       acd
wrong user right pwd        adm@yourstore.com       admin
wrong user empyt pwd        adm@yourstore.com       ${Empty}

*** Keywords ***
Tc1
    [Arguments]     ${username}     ${password}
    Enter Username    ${username}
    Enter Password    ${password}

