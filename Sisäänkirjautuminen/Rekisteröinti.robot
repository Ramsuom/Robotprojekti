*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/common_keywords/common_keywords.robot
Resource  ../Resources/common_keywords/common_keywords.robot
Library    ../Libraries/random_libraries.py
#C:\Users\Rami\PycharmProjects\RobotProjekti\Libraries\random_libraries.py
#Test Teardown     Close Browsers


*** Variables ***


*** Test Cases ***
Sisäänkirjautuminen
    Open Chrome Browser
    Luo uusi asiakkuus


*** Keywords ***
Luo uusi asiakkuus
    Valitse elementti   css:#account > span.link__icon-suffix-text
    Valitse elementti   css:#app > div.sc-19vmxcd-2.kHgGZb.app > header > div.dropdown-modal-container > div.dropdown-modal.dropdown-modal--account-dropdown.dropdown-modal__loaded > div.dropdown-modal-footer > div > a:nth-child(2)
    Sleep   1s
    Odota otsaketta     Asiakkuuden luonti
    ${etunimi}=     Anna satunnainen etunimi mies
    ${sukunimi}=     Anna satunnainen sukunimi
    ${numero}=  Anna satunnainen numero
    ${email}=    Anna satunnainen sahkoposti
    ${password}=  Anna satunnainen salasana
    Syötä tekstikenttään    email       ${email}
    Syötä tekstikenttään    password       ${password}
    Syötä tekstikenttään    firstname       ${etunimi}
    Syötä tekstikenttään    lastname       ${sukunimi}
    Syötä tekstikenttään    phoneMobile       ${numero}