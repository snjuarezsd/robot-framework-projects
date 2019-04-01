*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/Common.robot
Resource  ../Resources/Amazon.GUI.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

# Copy/paste the line below into Terminal to execute:
# pybot -d results tests/amazon.robot

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke

    Amazon.GUI.Search For Products
    Amazon.GUI.Select Product From Search Results
    Amazon.GUI.Add Product To Cart
    Amazon.GUI.Begin Checkout

Test Case 2
    Log  this is a demo test...
