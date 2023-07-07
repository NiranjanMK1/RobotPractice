*** Settings ***

Suite Setup     Log To Console    Opening browser
Suite Teardown  Log To Console    Closing Browser

Test Setup      Log To Console    login to application
Test Teardown   Log To Console    logout from appllication

*** Test Cases ***
TC1 Prepaid Recharge
    [Tags]  sanity
    Log To Console     This is prepaid recharge

TC2 Postpaid Recharge
    [Tags]  regerssion
    Log To Console     This is postpaid recharge

TC3 Search
    [Tags]  sanity
    Log To Console    This is serach test

TC4 Advanced Seach
    [Tags]  regerssion
    Log To Console    This is Adv Search Test case


