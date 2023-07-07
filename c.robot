*** Settings ***
Library     SeleniumLibrary
Resource    Resources/ckey.robot
*** Variables ***
${browser}      headless chrome
${url}          https://demo.guru99.com/test/newtours/

*** Test Cases ***
Tc1
    ${pagetitle}=   key1    ${url}      ${browser}
    Log To Console    ${pagetitle}
    Input Text    name:userName    mercury
    Input Text    name:password    mercury
    key2

