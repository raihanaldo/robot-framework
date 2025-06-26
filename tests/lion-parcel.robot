*** Settings ***
Library    AppiumLibrary

Suite Setup    Open App
Suite Teardown    Close Application

*** Variables ***
${REMOTE_URL}          http://127.0.0.1:4723
${PLATFORM_NAME}       Android
${DEVICE_NAME}         Android Device
${UDID}                580c3f8b
${APP_PACKAGE}         com.lionparcel.services.consumer
${APP_ACTIVITY}        .view.onboarding.OnBoardingActivity

*** Test Cases ***
Buka Aplikasi dan Cek halaman login
    Wait Until Page Contains Element    com.lionparcel.services.consumer:id/llPrompt
    Page Should Contain Element         com.lionparcel.services.consumer:id/llPrompt
    Input Text                          com.lionparcel.services.consumer:id/edtFullName     Raihanaldo
    Input Text                          com.lionparcel.services.consumer:id/edtPhoneNumber  085715302593
    Input Text                          com.lionparcel.services.consumer:id/edtPassword     raihan757
    Click Element                       com.lionparcel.services.consumer:id/btnNext

*** Keywords ***
Open App
    Open Application    ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    udid=${UDID}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    ...    automationName=UiAutomator2
    ...    noReset=true
    ...    autoGrantPermissions=true
    ...    newCommandTimeout=240
