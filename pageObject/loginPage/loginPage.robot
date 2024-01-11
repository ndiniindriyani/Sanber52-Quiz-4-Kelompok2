*** Settings ***
Library      AppiumLibrary
Resource    ../base/base.robot
Resource    ../homePage/homePage.robot
Variables    login_locator.yaml

*** Variables ***
${VALID_USERNAME}    support@ngendigital.com
${VALID_PASSWORD}    abc123
${INVALID_USERNAME}  Testing
${INVALID_PASSWORD}  Tetsing123 
${TEXT1}             Enter username
${TEXT2}             Enter password
${ERROR_MESSAGE_1}   Invalid username/password 


*** Keywords ***

Verify signIn Page
    Wait Until Element Is Visible    ${fieldUsername}
    Wait Until Element Is Visible    ${fieldPassword}
    Wait Until Element Is Visible    ${SignInButton}
    Page Should Contain Text         ${TEXT1}
    Page Should Contain Text         ${TEXT2}
    Element Should Be Enabled        ${SignInButton}    

Input Username for Login
    [Arguments]                      ${username}
    Input Text                       ${fieldUsername}    ${username}

Input Password for Login
    [Arguments]                      ${password}
    Input Text                       ${fieldPassword}    ${password}

Username is Empty
    Clear Text                       ${fieldUsername}

Password is Empty
    Clear Text                       ${fieldPassword}

Click Button Sign In
    Click Element                    ${SignInButton}

Verify Error Message
    Wait Until Page Contains         ${errorMessage1}



Screenshoot Page Login
    Capture Page Screenshot




    



