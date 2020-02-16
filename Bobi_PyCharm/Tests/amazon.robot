*** Settings ***
Documentation                       Testkörning av Phycharm
Resource                          ../Resources/keywords.robot
Library                             SeleniumLibrary
Suite Setup                          Begin Web Test
Suite Teardown                      End Web Test

*** Variables ***
${BROWSER} =  chrome
${URL} =  http://www.amazon.com

*** Test Cases ***
kommer åt hemsidan amazon.com
    [Documentation]                Testar om det funkar
    [Tags]                          Test 1

    Go to Web Page
användaren kan utföra sökning av ferrari
    [Documentation]                Testar om det funkar att söka ferarri
    [Tags]                          Test 2
    Go to Web Page
    Search for Product              ferrari 458  results for "ferrari 458"

användaren kan utföra sökningav tesla
    [Documentation]                Testar om det funkar att söka tesla
    [Tags]                          Test 3
    Go to Web Page
    Search for Product             tesla model x   results for "tesla model x"