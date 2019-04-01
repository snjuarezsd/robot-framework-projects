*** Settings ***
Documentation  This suite of tests validates the functionality of a test html page.
Library  SeleniumLibrary


*** Variables ***
#default to the correct page and use -v to set to failed page at runtime
${PAGE}  file:///C:/Users/Steven/Documents/moebius_solutions_qa_test/correct.html


*** Test Cases ***
Select and Load
    navigate to page
    choose value from dropdown and validate textbox output
    data remains in textfield when empty state is loaded
    close window

Textbox Clear
    navigate to page
    click clear
    close window


*** Keywords ***
navigate to page
    open browser  ${PAGE}  Chrome
    maximize browser window

choose value from dropdown and validate textbox output
    SELECT FROM LIST BY INDEX  select  3
    click button  loadButton
    textfield should contain  input  Cat

data remains in textfield when empty state is loaded
    SELECT FROM LIST BY INDEX  select  0
    click button  loadButton
    textfield should contain  input  Cat

click clear
    SELECT FROM LIST BY INDEX  select  3
    click button  loadButton
    click button  clearButton
    textfield value should be  input  ${EMPTY}
