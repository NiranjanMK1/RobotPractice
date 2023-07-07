#Scrolling page till it reach a pixel
#Scrolling page till find element of page
# Scroll page till bottom
*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Tc1
    Open Browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   headlesschrome
    #Execute Javascript  window.scrollTo(0,2500)


    #below line doesnot requrie any script
    #Scroll Element Into View    xpath://img[@alt='Flag of India']

    Execute Javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep    5
    Execute Javascript  window.scrollTo(0,-document.body.scrollHeight)

