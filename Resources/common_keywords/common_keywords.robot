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

Close Browsers
    Close Browser

Syötä tekstikenttään
    [Arguments]       ${TEXTFIELD}    ${TEXT}
    Input Text     ${TEXTFIELD}     ${TEXT}
    #Click element     submit

Valitse linkki
    [Arguments]       ${LINK}
    Click link          ${LINK}

Valitse elementti
    [Arguments]       ${ELEMENT}
   Wait Until Page Contains Element    ${ELEMENT}
   Click element    ${ELEMENT}

Paina linkkiä
   [Arguments]    ${linkin_nimi}
   [Documentation]    Odottaa argumenttina annetun linkin ilmaantumista ja painaa sitä sitten.
   Wait Until Page Contains    ${linkin_nimi}
   Wait Until Page Contains Element    link=${linkin_nimi}
   Click Link    ${linkin_nimi}

Odota otsaketta
   [Arguments]    ${otsake}=${EMPTY}
   [Documentation]    Odottaa näytön vasemmassa ylälaidassa olevaa sivun otsaketta. Odotettava otsake tai sen osa annetaan argumentissa.
   ...    Käytetään varmistamaan, että ollaan siirrytty oikealle sivulle ennen kuin suoritusta jatketaan.
   ...
   ...    Jos ${otsake} argumentti jätetään tyhjäksi, niin odotetaan otsaketta, mutta sen sisältöön ei oteta kantaa.
   #Sleep    1s
   #Odota IE selainta
   Wait Until Page Contains    ${otsake}
   Comment    Wait Until Page Contains Element    css=input[name='language']        \    #Odotetaan kunnes sivun viimeinen formi on latautunut.
#   #Sleep  1s
#   Wait Until Page Contains Element    //div[@class="headerDiv" and contains(text(), "${otsake}")]
#   # Odota kunnes kaikki framet ovat latautuneet
#   ${frame_loytyy}    ${apumuuttuja}    Aja avainsana ja sivuuta virhe    Page Should Contain Element    xpath=(//iframe)[1]
#   Run Keyword If    "${frame_loytyy}"=="PASS"    Odota framen latautumista    1
#   Comment    ${frame_loytyy}    ${apumuuttuja}    Aja avainsana ja sivuuta virhe    Page Should Contain Element    xpath=(//iframe)[2]    ${EMPTY}
#   Comment    Run Keyword If    "${frame_loytyy}"=="PASS"    Odota framen latautumista    2
#   Comment    ${frame_loytyy}    ${apumuuttuja}    Aja avainsana ja sivuuta virhe    Page Should Contain Element    xpath=(//iframe)[3]    ${EMPTY}
#   Comment    Run Keyword If    "${frame_loytyy}"=="PASS"    Odota framen latautumista    3


Paina nappia
   [Arguments]    ${nappi}
   [Documentation]    Odottaa kunnes argumenttina annettu nappi ilmestyy sivulle, ja painaa sitä sitten.
   Wait Until Page Contains Element    ${nappi}
   Click Button    ${nappi}