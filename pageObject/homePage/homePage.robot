*** Settings ***
Library                 AppiumLibrary
Resource                ../base/base.robot
Variables               homePage_locator.yaml

*** Keywords ***
Verify Home Page
    Wait Until Element Is Visible      ${homePage}
    Element Should Be Visible          ${bookButton}
    Element Should Be Visible          ${searchButton}
    Element Should Be Visible          ${checkInButton}

Click Sign In Button On Home Page
    Wait Until Element Is Visible      ${loginButton}
    Click Element                      ${loginButton}

Verify Page After Login
    Wait Until Element Is Visible      ${userLogin}

