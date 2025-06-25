*** Settings ***
Suite Teardown   Close Browser
Library          SeleniumLibrary
Library          Collections
Resource         ../keywords/StepDefinitions.robot
Resource         ../keywords/MainKeywords.robot
Resource         ../resources/setup.robot
Resource         ../resources/element.robot
Resource         ../resources/data.robot

*** Test Cases ***
Login with Hardcoded Data
   Open Browser   https://www.saucedemo.com/   chrome
   Input Text     id=user-name   standard_user
   Input Text     id=password   secret_sauce
   Click Button   id=login-button
   Sleep   3s
   Click Button   id=add-to-cart-sauce-labs-backpack
   Click Element   id=shopping_cart_container
   Click Button   id=checkout
   Input Text  id=first-name  Raihan
   Input Text  id=last-name   Aldo
   Wait Until Element Is Visible  id=postal-code
   Input Text       id=postal-code    21214
   Click Button   id=continue
   Click Button   id=finish
   Page Should Contain    Thank you for your order!

