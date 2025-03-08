#######     Runners     ########
# py -m robot -d Results      -i       Test        Tests
# py -m robot -d Results      -i       Login        Tests
# py -m robot -d Results      -i       Happy        Tests
# py -m robot -d Results      -i       Negative        Tests

*** Settings ***
Resource    ../Resources/PO/LoginPage.robot
Resource    ../Resources/PO/InventoryPage.robot
Resource    ../Resources/Common.robot


Suite Setup          Run Keywords         New Browser               browser=${Chromium_Browser}    headless=${HEADLESS}
...                  AND                  Set Browser Timeout       1m
Test Setup           New Context          viewport={'width': 1920, 'height': 1080}
Test Timeout         1m
Test Teardown        Close Context
Suite Teardown       Close Browser



*** Test Cases ***
1-login with valid credentials
     [Tags]      Happy    Test    Login
     Open Sauce Labs And Fill Login Details  ${UserName}   ${Password}
     Click On Login Button
     Assert That The User Has Logged In Successfully

2-login with invalid credentials
     [Tags]      Negative    Test    Login
     Open Sauce Labs And Fill Login Details  Invalid_Username   ${Password}
     Click On Login Button
     Verify Error Message    Username and password do not match any user in this service




