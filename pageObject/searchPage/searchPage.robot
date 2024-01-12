*** Settings ***
Resource    ../loginPage/loginPage.robot
#Resource    ../homePage/homePage.robot
#Resource    ../base/base.robot
Variables   searchPage.yaml

*** Variables ***
${textEnterFlightNumber1}    Enter Flight Number
${validFlightNumber1}        DA 935
${validFlightNumber}         DA935
${invalidFlightNumber}       Testing935

*** Keywords ***

Click Button for Search Flight Number
    #Click Button Seacrh in Home Page
    Wait Until Element Is Visible    ${button-Search}
    Click Element                    ${button-Search}

Verify Search Flight Number Page
    #Verify Search Flight Number Page
    Wait Until Element Is Visible    ${textFlightNumber}
    Wait Until Element Is Visible    ${fieldFlightNumber}
    Wait Until Element Is Visible    ${search-Button}
    Page Should Contain Text         ${textEnterFlightNumber1}
    
Input Valid Flight Number
    #Input Valid Flight Number
    [Arguments]                      ${flightnumber}
    Input Text                       ${fieldFlightNumber}    ${flightnumber}

Click Search Button in Search Page
    #Click Seacrh Button in Search Page
    Click Element                    ${search-Button }

Verify Success Search Flight Number
    #Verify Success Search Flight Number
    Wait Until Element Is Visible    ${torontoToParis}
    Wait Until Element Is Visible    ${flightNumber1}
    Page Should Contain Text         ${validFlightNumber1} 

Flight Number is Empty
    #Clear Flight Number
    Clear Text                       ${fieldFlightNumber}

Verify Error Message for Search Appears
    #Verify Error Message Appears
    Wait Until Page Contains         ${errorMessageSearch2}

Screenshoot Page Search Flight Number
    #Sreenshoot Page
    Capture Page Screenshot