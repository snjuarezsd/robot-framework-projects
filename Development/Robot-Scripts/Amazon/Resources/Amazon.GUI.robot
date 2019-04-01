*** Settings ***
Library  Selenium2Library

*** Variables ***
${INSURANCE_PROMPT}  Wait Until Page Contains


*** Keywords ***
Search For Products
    Wait Until Page Contains  Your Amazon.com
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "Ferrari 458"

Select Product From Search Results
    sleep  2s
    Click Link  css=#result_0 a.s-access-detail-page
    Wait Until Page Contains  Back to search results

Add Product To Cart
    sleep  2s
    click element  id=add-to-cart-button
    Wait Until Page Contains  Added to Cart

Begin Checkout
    Click Link  id=hlb-ptc-btn-native
    #run keyword if  ${INSURANCE_PROMPT}  Add to your order    Refuse Coverage
    sleep  1s
    Page Should Contain Element  id=signInSubmit

Refuse Coverage
    sleep  1s
    click button  id=siNoCoverage-announce