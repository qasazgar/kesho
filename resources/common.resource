*** Settings ***
Library    SeleniumLibrary
Variables  ../variables/variables.py

*** Keywords ***
Open Browser Chrome Headless
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --disable-notifications
    Call Method    ${options}    add_argument    --disable-cache
    # به جای "--window-size=1920,1080" از set_window_size استفاده می‌کنیم بعد از باز کردن مرورگر
    Open Browser    ${BASE_URL}/login    chrome    options=${options}
    Set Window Size    1920    1080
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
