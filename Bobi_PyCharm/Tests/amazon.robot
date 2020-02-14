*** Settings ***
Documentation  Testkörning av Phycharm
Library  SeleniumLibrary
*** Keywords ***
Begin Web Test
    Open Browser                      about:blank  chrome

Go to Web Page
    Load Page
    Verify page LoadedInput Text                      id:twotabsearchtextbox  ferrari 458
    Click Button                    xpath://*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains        results for "ferrari 458"
Load Page
    Go to                           Http://wwww.amazon.com
Verify page Loaded
    Enter Search Term
    Submit Serch
    Verify earch Completed
Enter Search Term
    Input Text                      id:twotabsearchtextbox  ferrari 458
Submit Search
    Click Button                    xpath://*[@id="nav-search"]/form/div[2]/div/input
Verify Search Completed
    Wait Until Page Contains        results for "ferrari 458"
End Web Test
    Close Browser
*** Test Cases ***
Testar amazon.com
    [Documentation]                Testar om det funkar
    [Tags]                          Test 1
    Begin Web Test

    Go to Web Page

    Search for Product

    End Web Test
