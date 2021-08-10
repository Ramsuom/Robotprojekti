*** Settings ***
Library  SeleniumLibrary
Resource  ../Variables/Project_variables.robot

*** Keywords ***
Open Chrome Browser
    Open Browser    https://www.verkkokauppa.com/   chrome
    Maximize Browser Window
    Page Should Contain     Verkkokauppa.com – Todennäköisesti aina halvempi
    Sleep   5s
    Click element   css:#allow-cookies

Sign in
    Click element   css:#account
    Sleep   3s
    Input text to field    css:#login-form-email-modal     ${USERNAME}
    Input text to field    css:#login-form-password-modal     ${PASSWORD}
    Click button      login-button-modal
    Sleep   2s
#    Click element   css:div > div.dropdown-modal.dropdown-modal--account-dropdown > div:nth-child(3) > div.dropdown-modal-block--links > a:nth-child(2)
#    Sleep   3s
#    Page Should Contain     Tilinhallinta ‐ Asiakastiedot

Sign in fail
    Click element   css:#account
    Sleep   3s
    Input text to field    css:#login-form-email-modal     ${USERNAME_FAIL}
    Input text to field    css:#login-form-password-modal     ${PASSWORD_FAIL}
    Click button      login-button-modal
    Sleep   2s
    Page should contain     Kirjaudu sisään antamalla sähköpostiosoitteesi

Close All Browsers
    Close Browser

Input text to field
    [Arguments]       ${TEXTFIELD}    ${TEXT}
    Input Text     ${TEXTFIELD}     ${TEXT}
    #Click element     submit

Valitse linkki
    [Arguments]       ${LINK}
    Click link          ${LINK}

Odota otsikkoa
    [Arguments]       ${PAGE}
    Page should contain      ${PAGE}