*** Settings ***
Documentation  Testkörning av Phycharm
Library  SeleniumLibrary
*** Keywords ***
Begin Web Test
Go to Web Page
Search for Product
End Web Test
*** Test Cases ***
Testar amazon.com
    [Documentation]                Testar om det funkar
    [Tags]                          Test 1
    #Begin Web Test
    Open Browser                      about:blank  chrome
    #Go to Web Page
    Go to                           Http://wwww.amazon.com
    wait until page contains        Your Amazon.com
    #Search for Product
    Input Text                      id:twotabsearchtextbox  ferrari 458
    Click Button                    xpath://*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains        results for "ferrari 458"
    #End Web Test
    Close Browser