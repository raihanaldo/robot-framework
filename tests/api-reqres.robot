*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    BuiltIn

Suite Setup    Setup API

*** Variables ***
${BASE_URL}    https://reqres.in
${session}     reqres

*** Keywords ***

Setup API
    Create Session    ${session}    ${BASE_URL}

the API base URL is set
    [Documentation]    Ensure session is created
    No Operation

I request GET user with ID ${id}
    ${response}=    GET On Session    ${session}    /api/users/${id}
    Set Suite Variable    ${response}

response status code should be ${expected}
    Should Be Equal As Numbers    ${response.status_code}    ${expected}

the first name in response should be "${expected_name}"
    ${body}=    To JSON    ${response.content}
    Should Be Equal    ${body['data']['first_name']}    ${expected_name}

I send POST to create user with name "${name}" and job "${job}"
    &{payload}=    Create Dictionary    name=${name}    job=${job}
    &{headers}=    Create Dictionary    x-api-key=reqres-free-v1
    ${response}=    POST On Session    ${session}    /api/users    headers=${headers}    json=${payload}
    Set Suite Variable    ${response}

response should contain name "${name}" and job "${job}"
    ${body}=    To JSON    ${response.content}
    Should Be Equal    ${body["name"]}    ${name}
    Should Be Equal    ${body["job"]}     ${job}


*** Test Cases ***

Scenario: Get user with ID 2
    Given the API base URL is set
    When I request GET user with ID 2
    Then response status code should be 200
    And the first name in response should be "Janet"

Scenario: Create user with name and job
    Given the API base URL is set
    When I send POST to create user with name "Aldo" and job "QA Engineer"
    Then response status code should be 201
    And response should contain name "Aldo" and job "QA Engineer"