*** Settings ***
Library     SeleniumLibrary
Library    String


*** Test Cases ***
test case1
    ${my_string}=  Set Variable  Hello World
    ${length}=    ${my_string}
    Log to console   Length of my string is ${length}
