*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/common_keywords/common_keywords.robot
Resource  ../Resources/Variables/Project_variables.robot
Test Teardown     Close All Browsers


*** Test Cases ***
Tuotehaku
    Open Chrome Browser
    #Maximize Browser Window
    #Page Should Contain     Verkkokauppa.com – Todennäköisesti aina halvempi
    Sign in
    Click element       css:#app > div.sc-19vmxcd-2.kHgGZb.app > header > div > label > svg.icon-sc-td2w5n-0.sc-2stjer-0.YZaTH
    Sleep     3s
    Click element        css:#sidebar-item-55a
    Sleep   3s
    Click element       css:#sidebar-header-main > label > svg.icon-sc-td2w5n-0.sc-2stjer-1.YZaTH
    Sleep   2s
    Click element        css:#category-display-window > div:nth-child(1) > div > ol > li:nth-child(2) > div
    Sleep   2s
    Click element       css:#main > section > aside > div.lt2tbg-0.djQcbD > div:nth-child(2) > div.shipment-details > div.ButtonGroup-sc-1g32o11-0.fba90p-0.bFKYkN.leOQhM > button.Button-sc-mt7im1-0.iBZoPo.jevm7v-0.jqyCPK
    Sleep   2s
    Click element       css:div > div.dropdown-modal.dropdown-modal--cart-dropdown > div > div.Header-sc-c899hf-0.Footer-sc-c899hf-1.ldePEh > div > div.sc-1t0ijj3-0.eKTbBW > a
    Sleep   2s
    Odota otsikkoa     Ostoskori
    Click element       css:#app > main > div > div > div.vk-pages > div.vk-pages-sticky_footer > div > a
    Sleep   2s
    Click element       css:#app > main > div > div > div.vk-pages > div.vk-pages__container.vk-pages__container--address > div > section > ul > li:nth-child(1)
    Sleep   2s
    Click element       css:#app > main > div > div > div.vk-pages > div.vk-pages-sticky_footer > div > a.vk-pointy-button.vk-pointy-button--right.vk-pointy-button--primary.vk-pointy-button--next-step
    Sleep       2s
    Click element       css:#app > main > div > div > div.vk-pages > div.vk-pages__container.vk-pages__container--shipment > div > section > ul > li.panel.panel--shipment-group-pickup.panel--checked.panel--has-content.panel--is-visible > div > div > ul > li.panel.panel--shipment-method-1.panel--first-item.panel--has-content.panel--is-visible > label > a
    Sleep    2s
    Click element       css:#app > main > div > div > div.vk-pages > div.vk-pages-sticky_footer > div > a.vk-pointy-button.vk-pointy-button--right.vk-pointy-button--primary.vk-pointy-button--next-step
    Odota otsikkoa     Valitse maksutapa
#    Click element       css:#app > main > div > div > div.vk-pages > div.vk-pages__container.vk-pages__container--payment > div > section > dl > dd:nth-child(4) > section.panel.panel--nouto.panel--first-item.panel--checked.panel--is-visible > label > a
#    Sleep    2s
#    Click element       css:#app > main > div > div > div.vk-pages > div.vk-pages-sticky_footer > div > a.vk-pointy-button.vk-pointy-button--right.vk-pointy-button--primary.vk-pointy-button--next-step
#    Odota otsikkoa     Vahvista tilauksesi tiedot

Poista Tuote
    Click element       css:#app > main > div > div > div.vk-steps-container.vk-steps-container--payment > div.vk-steps.vk-steps--payment.vk-steps--enabled > div:nth-child(1)
    Odota otsikkoa     Ostoskori
    Click element       css:#app > main > div > div > div.vk-pages > div.vk-pages__container.vk-pages__container--cart > div > section > ul > li > div > div.vk-cart-item__content > div:nth-child(1) > div.vk-cart-item__properties > div > div:nth-child(1) > div > button:nth-child(1)
    Click Button        confirm
    Sleep     5s
    Close Browser