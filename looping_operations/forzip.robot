*** Settings ***
Library     SeleniumLibrary
Library    String

*** Variables ***
@{name}     Alice    Bob    Charlie
@{ages}     25       30     35

*** Test Cases ***
Forinzip
    FOR    ${names}    ${age}    IN ZIP    ${name}    ${ages}
        Log To Console    ${names} - ${age}


    END