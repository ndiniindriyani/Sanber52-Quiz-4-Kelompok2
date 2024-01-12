*** Settings ***
Resource    ../loginPage/loginPage.robot
#Resource   ../homePage/homePage.robot
#Resource   ../base/base.robot
Variables   SignOutPage.yaml


*** Keywords ***

Click Button Sign Out 
    Wait Until Element Is Visible           ${signOutButton1}
    Click Element                           ${signOutButton1}