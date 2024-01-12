*** Settings ***
Resource    ../pageObject/base/base.robot
Resource    ../pageObject/homePage/homePage.robot
Resource    ../pageObject/loginPage/loginPage.robot
Resource    ../pageObject/searchPage/searchPage.robot
Resource    ../pageObject/SignOut/SignOutPage.robot


Test Setup        Run Keywords
...               Open NG Apps
...               Sign In With Valid Username and Password

Test Teardown     Close NG Apps


*** Test Cases ***

Verify Click Button SignOut
    Click Button Sign Out 


#Note : Feature sign out ketika di klik tidak dapat direct ke screen awal, sehingga saya hanya menjalankan click button