*** Settings ***
Suite Teardown     Close Browser
Library            SeleniumLibrary
Library            Collections
Resource           ../keywords/StepDefinitions.robot
Resource           ../keywords/MainKeywords.robot
Resource           ../resources/setup.robot
Resource           ../resources/element.robot
Resource           ../resources/data.robot

*** Test Cases ***
Checkout Flow with Gherkin Style
    Given the user opens the Saucedemo login page
    When the user logs in with valid credentials
    And the user adds a backpack product to the cart
    And the user opens the cart
    And the user proceeds to checkout
    And the user fills the checkout form
    And the user completes the checkout
    Then the user should see the order success message
