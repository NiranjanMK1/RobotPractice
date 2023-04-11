*** Settings ***
Library    Collections
*** Variables ***
@{list1}    a    b   c

*** Test Cases ***
exampletest
    Append To List    ${list1}  d   c   e  e  f   g
    Log To Console  The items before removing of the list is${list1}
    Remove From List    ${list1}    1
    Log To Console  The items after removing of the list is${ list1}
    ${mycoutn}  Count Values In List    ${list1}    e
    Log To Console    ${mycoutn} 
