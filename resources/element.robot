*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${E_USERNAME}                id=user-name
${E_PASSWORD}                id=password
${E_BTN_LOGIN}              id=login-button
${E_INV_CONTAINER}          id=inventory_container
${E_BTN_ADD_BACKPACK}       id=add-to-cart-sauce-labs-backpack
${E_BTN_REMOVE_BACKPACK}    id=remove-sauce-labs-backpack
${E_BTN_CART}               id=shopping_cart_container
${E_BTN_CHECKOUT}           id=checkout
${E_FIRSTNAME}              id=first-name
${E_LASTNAME}               id=last-name
${E_ZIP}                    id=postal-code
${E_BTN_CONTINUE}           id=continue
${E_OVERVIEW_HEADER}        xpath=//span[text()='Checkout: Overview']
${E_BTN_FINISH}             id=finish
${E_COMPLETE_MESSAGE}       id=checkout_complete_container
