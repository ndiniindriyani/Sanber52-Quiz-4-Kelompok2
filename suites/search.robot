*** Settings ***
Resource    ../pageObject/base/base.robot
Resource    ../pageObject/homePage/homePage.robot
Resource    ../pageObject/loginPage/loginPage.robot
Resource    ../pageObject/searchPage/searchPage.robot


Test Setup        Run Keywords
...               Open NG Apps
...               Sign In With Valid Username and Password

Test Teardown     Close NG Apps

*** Test Cases ***

Search with Valid Flight number
    #Click Button Seacrh in Home Page
    Click Button for Search Flight Number
    #Verify Search Flight Number Page
    Verify Search Flight Number Page
    #Input Valid Flight Number
    Input Valid Flight Number                    ${validFlightNumber}
    #Click Seacrh Button in Search Page
    Click Search Button in Search Page
    #Verify Success Search Flight Number
    Verify Success Search Flight Number

Seacrh with Invalid Flight number
    #Click Button Seacrh in Home Page
    Click Button for Search Flight Number
    #Verify Search Flight Number Page
    Verify Search Flight Number Page
    #Input Invalid Flight Number
     Input Valid Flight Number                    ${invalidFlightNumber}
    #Click Seacrh Button in Search Page
    Click Search Button in Search Page
    #Verify Error Message Appears
    Verify Error Message for Search Appears
    #Screenshoot
    Screenshoot Page Search Flight Number

Search with Empty Flight Number
    #Click Button Seacrh in Home Page
    Click Button for Search Flight Number
    #Verify Search Flight Number Page
    Verify Search Flight Number Page
    #Input Valid Flight Number
    Input Valid Flight Number                    ${validFlightNumber}
    #Clear Flight Number
    Flight Number is Empty
    #Click Search Button in Search Page
    Click Search Button in Search Page
    #Verify Error Message Appears
    Verify Error Message for Search Appears