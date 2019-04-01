*** Settings ***
Library  Selenium2Library

*** Keywords ***
Begin Web Test
    OPEN BROWSER  about:blank  chrome
    MAXIMIZE BROWSER WINDOW

End Web Test
    close browser