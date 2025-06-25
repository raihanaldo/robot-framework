*** Keywords ***
the user opens the Saucedemo login page
    Open New Browser    ${BASE_URL}

the user logs in with valid credentials
    Send Text To Element    ${E_USERNAME}    ${USERNAME}
    Send Text To Element    ${E_PASSWORD}    ${PASSWORD}
    Click Button            ${E_BTN_LOGIN}
    Wait Until Element Is Visible    ${E_INV_CONTAINER}

the user adds a backpack product to the cart
    Wait Until Element Is Visible    ${E_BTN_ADD_BACKPACK}
    Click Button    ${E_BTN_ADD_BACKPACK}


the user opens the cart
    Wait Until Element Is Visible    ${E_BTN_CART}
    Click Element    ${E_BTN_CART}

the user proceeds to checkout
    Click Button    ${E_BTN_CHECKOUT}

the user fills the checkout form
    Input Text    ${E_FIRSTNAME}    ${FIRSTNAME}
    Input Text    ${E_LASTNAME}     ${LASTNAME}
    Input Text    ${E_ZIP}          ${ZIP}
    Click Button  ${E_BTN_CONTINUE}
    Wait Until Element Is Visible    ${E_OVERVIEW_HEADER}

the user completes the checkout
    Click Button    ${E_BTN_FINISH}

the user should see the order success message
    Page Should Contain Element    ${E_COMPLETE_MESSAGE}
