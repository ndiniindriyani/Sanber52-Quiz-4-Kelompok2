*** Settings ***
Library      AppiumLibrary

Resource    ../base/base.robot
Resource    ../homePage/homePage.robot
Resource    ../loginPage/loginPage.robot
Variables   ../bookPage/bookPage_locator.yaml

*** Variables ***
${textConfirm1}        Click on the price to confirm your booking
${textSUccessPage1}    Your flight is booked. Reservation number is CADX2214

*** Keywords ***
Verify Book Button Appears
    # Verifikasi Tampilan Halaman dan Menu
    Wait Until Element Is Visible    ${userLogin}
    Wait Until Element Is Visible    ${buttonBook}
    Wait Until Element Is Visible    ${buttonBook}
    Wait Until Element Is Visible    ${buttonSearch}
    Wait Until Element Is Visible    ${buttonCheckin}

Click Button Book
    # Klik Button Book
    Click Element                    ${buttonBook}

Verify Screen Book Flight
    # Verifikasi Tampilan Halaman Book
    Wait Until Element Is Visible    ${buttonOneWay}
    Wait Until Element Is Visible    ${buttonRoundTrip}
    Element Should Be Visible        ${dropdownFrom}
    Element Should Be Visible        ${dropdownTo}
    Element Should Be Visible        ${dropdownClass}
    Element Should Be Visible        ${radioButtonFlight}
    Element Should Be Visible        ${radioButtonFlightHotel}
    Element Should Be Visible        ${checkBoxDay}
    Element Should Be Visible        ${buttonBookFlight}

Select One way Tab
    Click Element                    ${buttonOneWay}

Select Round Trip Tab
    Click Element                    ${buttonRoundTrip}

Select Depature
    Click Element                    ${dropdownFrom}
    Wait Until Element Is Visible    ${fromNewYork}
    Wait Until Element Is Visible    ${fromChicago}
    Wait Until Element Is Visible    ${fromToronto}
    Click Element                    ${fromChicago}

Select Destination
    Click Element                    ${dropdownTo}
    Wait Until Element Is Visible    ${toLondon}
    Wait Until Element Is Visible    ${toParis}
    Wait Until Element Is Visible    ${toOttawa}
    Click Element                    ${toParis}

Select Flight Class 
    Click Element                    ${dropdownClass}
    Wait Until Element Is Visible    ${economyClass}
    Wait Until Element Is Visible    ${firstClass}
    Wait Until Element Is Visible    ${businessClass}
    Click Element                    ${firstClass}

Select Start Date and End Date
    Click Element                    ${startDate}
    Wait Until Element Is Visible    ${calendar}
    Click Element                    ${pickStartDate1}
    Click Element                    ${buttonOk}
    Wait Until Element Is Visible    ${startDate}
    Click Element                    ${endDate}
    Wait Until Element Is Visible    ${calendar}
    Click Element                    ${pickEndDate1}
    Click Element                    ${buttonOk}
    Wait Until Element Is Visible    ${endDate}

Select Flight Option
    Wait Until Element Is Visible    ${radioButtonFlight}
    Click Element                    ${radioButtonFlight}  

Select Flight Option 2
    Wait Until Element Is Visible    ${radioButtonFlightHotel}
    Click Element                    ${radioButtonFlightHotel}  

Select Flight Option 3
    Wait Until Element Is Visible    ${checkBoxDay}
    Click Element                    ${checkBoxDay}   
   
Select Book Button
    Wait Until Element Is Visible    ${buttonBookFlight}
    Click Element                    ${buttonBookFlight}

Verify Confirmation Screen
    Wait Until Element Is Visible    ${textConfirmation}
    Page Should Contain Text         ${textConfirm1}
    Element Should Be Visible        ${textFrom}
    Element Should Be Visible        ${textTo}
    Element Should Be Visible        ${buttonConfirm}

Select Price in Confirmation Page
    Wait Until Element Is Visible    ${selectPrice1}
    Click Element                    ${selectPrice1}

Click Button Confirm 
    Wait Until Element Is Visible    ${buttonConfirm}
    Click Element                    ${buttonConfirm}

Verify Screen After Book Flight 
    Wait Until Element Is Visible    ${successBookFlight}
    Page Should Contain Text         ${textSUccessPage1}

Screenshoot Book Flight
    Capture Page Screenshot

