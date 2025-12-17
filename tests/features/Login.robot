*** Settings ***
Documentation     Sample Robot Framework test for login
Library           SeleniumLibrary
Resource          ../../resources/common.resource

Resource          ../step_definitions/login_steps.robot
Test Setup        Open Browser To Login Page
Test Teardown    Close Browser Chrome


*** Test Cases ***
Login With Valid Credentials
    [Documentation]    Test login with valid credentials
   # User Is On Login Page
    User Logs In With Valid Credentials
    Sleep    2

    User Should See Dashboard
    Add Exam
    Sleep    5
