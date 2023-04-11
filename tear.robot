*** Settings ***


*** Test Cases ***
TC1
    [Tags]      sanity
    Log To Console    this is sanity test1

Tc2
    [Tags]       sanity
    Log To Console    this is santity test2

Tc3
    [Tags]      regression
    Log To Console    this is regression test3
Tc4
    [Tags]      mytest
    Log To Console    this is the mytest cusotom
