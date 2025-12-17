*** Settings ***


Resource    ../../resources/common.resource

*** Keywords ***
user is on login page
    Open Browser To Login Page

user logs in with valid credentials
    Login With Valid Credentials

user should see dashboard
    Verify User Logged In
Add Exam
    Wait Until Element Is Visible    //button[normalize-space(text())='آزمون جدید']    timeout=10
    Click Button     //button[normalize-space(text())='آزمون جدید']
    Sleep  1
    Select From List By Label    xpath=//label[text()='مقطع']/following-sibling::div//select    ابتدایی
    Sleep  1
    Select From List By Label    xpath=//label[text()='پایه']/following-sibling::div//select    اول
    Input Text    xpath=//label[contains(text(),'نام معلم')]/following-sibling::input    آقای احمدی
    Wait Until Element Is Enabled    xpath=//button[text()='ادامه']    5s
    Click Button    xpath=//button[text()='ادامه']
    Sleep  2

    Select From List By Label    //label[.='اسم درس']/following::select[1]    ریاضی
    Wait Until Element Is Visible    xpath=(//div[contains(@class,'overflow-y-auto')]//input[@type='checkbox'])[1]

    Click Element    xpath=(//input[@type='checkbox'])[1]
    Click Element    xpath=(//input[@type='checkbox'])[3]
    Select Radio Button    target    evaluation
    Click Button    xpath=//button[text()='ادامه']

    Sleep     2
    Select From List By Label    xpath=//select    سخت
    Sleep     2

 #   Click Element    xpath=//select[@required='']
  #  Sleep  2
   # Click Element      //option[.='ریاضی']
    #Sleep  2

  #  Press Key    xpath=//select[@required='']    DOWN
   # Press Key    xpath=//select[@required='']    ENTER
   # Press Key    xpath=//select    DOWN
    #Press Key    xpath=//select    ENTER

    #Wait Until Element Is Visible    //select[option[1][normalize-space(text())='انتخاب کنید...']]
 #   Click Element                //select[option[1][normalize-space(text())='انتخاب کنید...']]
    #Wait Until Element Is Visible     //select[option[1][normalize-space(text())='متوسطه اول']]
    #Click Element                //select[option[1][normalize-space(text())='متوسطه اول']]
#    Select From List By Label    //select[option[1][normalize-space(.)='انتخاب کنید...']]    متوسطه اول
  #  Wait Until Element Is Visible    css=select.w-full.border-gray-300
   # Select From List By Label    css=select.w-full.border-gray-300    یازدهم


