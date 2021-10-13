*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/common_keywords/common_keywords.robot
Test Teardown     Close Browsers


*** Variables ***


*** Test Cases ***
Sisäänkirjautuminen
    Open Chrome Browser
    Sign in

Epäonnistunut sisäänkirjautuminen
    Open Chrome Browser
    Sign in fail

Uusi testi


