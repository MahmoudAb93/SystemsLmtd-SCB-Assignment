#######     Runners     ########
# py -m robot -d Results      -i       Test        Tests
# py -m robot -d Results      -i       SortProducts        Tests
# py -m robot -d Results      -i       Happy        Tests
# py -m robot -d Results      -i       Negative        Tests

*** Settings ***
Resource    ../Resources/PO/LoginPage.robot
Resource    ../Resources/PO/InventoryPage.robot
Resource    ../Resources/Common.robot


Suite Setup          Run Keywords         New Browser               browser=${Chromium_Browser}    headless=${HEADLESS}
...                  AND                  Set Browser Timeout       1m
Test Setup           Run Keywords         New Context          viewport={'width': 1920, 'height': 1080}
...                  AND                  Open Sauce Labs And Fill Login Details  ${UserName}   ${Password}
...                  AND                  Click On Login Button
...                  AND                  Assert That The User Has Logged In Successfully
Test Timeout         1m
Test Teardown        Close Context
Suite Teardown       Close Browser



*** Test Cases ***
1-Sort products name from a to z
     [Tags]      Happy    Test    SortProducts
     Sort Products    ${From_A_to_Z}

2-Sort products name from z to a
     [Tags]      Happy    Test    SortProducts
     Sort Products    ${From_Z_to_A}

3-Sort products price from High to Low
     [Tags]      Happy    Test    SortProducts
     Sort Products    ${From_High_to_Low}

4-Sort products price from Low to High
     [Tags]      Happy    Test    SortProducts
     Sort Products    ${From_Low_to_High}





