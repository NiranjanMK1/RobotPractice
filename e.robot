*** Settings ***
Documentation       Robot Framework Syntax examples
Library     SeleniumLibrary
Library     String
Library    Collections

*** Test Cases ***
TC1
    TRY
         @{mylist}       Create List     nira       bhagya       jannu
         Log To Console    ${mylist}[1]
         Remove From List    ${mylist}    ${mylist}[1]

    EXCEPT    AS    ${error_message}
        Log To Console    ${error_message}


    END




