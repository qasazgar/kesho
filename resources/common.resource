*** Settings ***
Library    SeleniumLibrary
Variables  ../variables/variables.py

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${BASE_URL}/login    ${BROWSER}
    Maximize Browser Window
Close Browser Chrome
    Close Browser
    Close All Browsers
    Sleep    1

Login With Valid Credentials
    Input Text    css:[placeholder='09123456789']    ${USERNAME}
    Click Button  //button[normalize-space(text())='ادامه']
    Wait Until Element Is Visible       css:[placeholder='123456']
    Input Text    css:[placeholder='123456']     ${PASSWORD}
    Click Button  //button[normalize-space(text())='تایید و ورود']

Verify User Logged In
    Wait Until Element Is Visible      //span[normalize-space(text())='کشو']
    Page Should Contain    داشبورد
