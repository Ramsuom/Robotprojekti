*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/common_keywords/common_keywords.robot
Test Teardown     Close Browsers

*** Test Cases ***
Tuotehaku
    Open Chrome Browser
    #Maximize Browser Window
    #Page Should Contain     Verkkokauppa.com – Todennäköisesti aina halvempi
    Input text to field    query     prosessori
    Click element     submit
    Sleep   3s
    Click element   query
    Page Should Contain     Hakutulokset haulle "prosessori"
