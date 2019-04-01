*** Settings ***
Library  Selenium2Library

*** Variables ***
${PAGE} =  correct
${BROWSER} =  chrome

*** Test Cases ***
Verify Load
    Do Something
    Do Something Else

Verify Clear
    Do Another Thing
    Do Something Else

*** Keywords ***
Select from dropdown


Click load button
    Log  I am doing another thing...

Click clear button
    Log  I am doing something else...
