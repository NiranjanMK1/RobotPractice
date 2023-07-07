*** Settings ***
Suite Setup     Log To Console    openin browser
Suite Teardown  Log To Console    closing

Test Setup      Log To Console    Login in to the application
Test Teardown   Log To Console    logout of the application

*** Test Cases ***
TC1 prepaid recharge
    Log To Console    this prepaid recharge
TC2 postpaid recharge
    Log To Console    this post paid recharge
TC3 serach fucntion
    Log To Console    this is search function
TC4 Advanced function
    Log To Console    this is advnaced search functiona