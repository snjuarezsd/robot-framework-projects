*** Settings ***
Library  Selenium2Library

*** Keywords ***

Begin Web Test
    Open Browser  http://www.amazon.com  Chrome
    maximize browser window

End Web Test
    Close Browser