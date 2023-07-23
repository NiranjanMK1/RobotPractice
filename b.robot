*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Navigation Test case
    Open Browser        https://www.google.co.in      chrome
    ${loc}=     get location
    Log To Console    ${loc}
    
    Sleep    3
    
    Go To    https://www.bing.com/
    ${loc}=     get location
    Log To Console    ${loc}

    Sleep    3
    
    Go Back
    ${loc}=     get location
    Log To Console    ${loc}

