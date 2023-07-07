*** Settings ***
Library     SeleniumLibrary
Resource    Resources/myresources.robot


*** Variables ***
${url}       https://demo.guru99.com/selenium/newtours/
${browser}      chrome


*** Test Cases ***
TC1
     ${page_title}=  LMB        ${url}      ${browser}
     Log To Console    ${page_title}
     Input Text    name:userName    mercury
     Input Text    name:password    mercury

