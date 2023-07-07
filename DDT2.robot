*** Settings ***
Library     SeleniumLibrary
Resource    H:/python_own_projects/pythonProject1/RobotPractice/Resources/login_resources.robot
Library     DataDriver      Login_data.xlsx     sheet_name = Sheet1
Suite Setup         Openmybrowser
Suite Teardown      Closemybrowser
Test Template       Invalid Login
*** Test Cases ***
LoingTestwithExcel



*** Keywords ***
Invalid Login
    [Arguments]     ${username}     ${password}
    enteremail    ${username}
    enterpassword    ${password}
    Clicklogin
    Errormessage
