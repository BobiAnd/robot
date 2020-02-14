*** Settings ***
Documentation                       Testkörning av Phycharm
Library                             SeleniumLibrary
Test Setup                          Begin Web Test
Test Teardown                       End Web Test

*** Variables ***
${BROWSER} =  chrome
${URL} =  http://www.amazon.com
${SERACH_TERM} =  ferrari 458

*** Keywords ***
Begin Web Test
    Open Browser                      about:blank  ${BROWSER}

Go to Web Page
    Load Page
    Verify Page Loaded


Load Page
    Go To                           ${URL}


Verify Page Loaded
    Wait Until Page Contains            Your Amazon.com

Search for Product
    [Arguments]                      ${search_term}  ${search_result}
    Enter Search Term                ${search_term}
    Submit Search
    Verify Search Completed          ${search_result}

Enter Search Term
    [Arguments]                        ${search_term}
    Input Text                      id:twotabsearchtextbox  ${search_term}

Submit Search
    Click Button                    xpath://*[@id="nav-search"]/form/div[2]/div/input

Verify Search Completed
    [Arguments]                             ${search_result}
  Wait Until Page Contains                  ${search_result}

End Web Test
    Close Browser
*** Test Cases ***
kommer åt hemsidan amazon.com
    [Documentation]                Testar om det funkar
    [Tags]                          Test 1

    Go to Web Page
nvändaren kan utföra sökning
    [Documentation]                Testar om det funkar att söka ferarri
    [Tags]                          Test 2
    Go to Web Page
    Search for Product              ferrari 458  results for "ferrari 458"

