*** Settings ***
Documentation                       Testkörning av Phycharm
Library                             SeleniumLibrary
Test Setup                          Begin Web Test
Test Teardown                       End Web Test
*** Keywords ***
Begin Web Test
    Open Browser                      about:blank  chrome

Go to Web Page
    Load Page
    Verify page Loaded


Load Page
    Go to                           Http://wwww.amazon.com


Verify page Loaded
     Wait Until Page Contains           Your Amazon.com

Search for Product
    Enter Search Term
    Submit Search
    Verify Search Completed

Enter Search Term
    Input Text                      id:twotabsearchtextbox  ferrari 458

Submit Search
    Click Button                    xpath://*[@id="nav-search"]/form/div[2]/div/input

Verify Search Completed
    Wait Until Page Contains        results for "ferrari 458"

End Web Test
    Close Browser
*** Test Cases ***
kommer åt hemsidan amazon.com
    [Documentation]                Testar om det funkar
    [Tags]                          Test 1

    Go to Web Page
nvändaren kan utföra sökning
    [Documentation]                Testar om det funkar
    [Tags]                          Test 2
    Go to Web Page

    Search for Product


