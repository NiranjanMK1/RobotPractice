*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Run JavaScript Example
    Open Browser    https://www.example.com    chrome
    Execute JavaScript    alert('Hello, Robot Framework!')
     ${name}=    Set Variable    Robot Framework
    Execute JavaScript    alert('Hello, ' + arguments[0] + '!')