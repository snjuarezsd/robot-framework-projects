*** Settings ***
Documentation  Test test
Resource  ... Shared.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Test Cases ***
Test Case 1
    [Documentation]  Log in to some site
    [Tags]  Smoke

    Log  This is some info...

Test Case 2
    [Documentation]  Log in to some site
    [Tags]  Smoke

    Log  This is some other info...


