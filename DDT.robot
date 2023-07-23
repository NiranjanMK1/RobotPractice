*** Settings ***
Library     SeleniumLibrary
Resource    H:/python_own_projects/pythonProject1/RobotPractice/Resources/login_resources.robot
Suite Setup         Openmybrowser
Suite Teardown      Closemybrowser
Test Template       Invalid Login
*** Test Cases ***      username                passowrd
case1                   admin@yourstore.com     ${EMPTY}
case2                   admin@yourstore.com     xyz


*** Keywords ***
Invalid Login
    [Arguments]     ${username}     ${password}
    enteremail    ${username}
    enterpassword    ${password}
    Clicklogin
    Errormessage
