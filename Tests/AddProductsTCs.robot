#######     Runners     ########
# py -m robot -d Results      -i       Test        Tests
# py -m robot -d Results      -i       AddProducts        Tests
# py -m robot -d Results      -i       Happy        Tests
# py -m robot -d Results      -i       Negative        Tests

*** Settings ***
Resource    ../Resources/PO/LoginPage.robot
Resource    ../Resources/PO/InventoryPage.robot
Resource    ../Resources/Common.robot


Suite Setup          Run Keywords         New Browser               browser=${Chromium_Browser}    headless=${HEADLESS}
...                  AND                  Set Browser Timeout       1m
Test Setup           Run Keywords         New Context          viewport={'width': 1920, 'height': 1080}
...                  AND                  Open Sauce Labs And Fill Login Details   ${UserName}   ${Password}
...                  AND                  Click On Login Button
...                  AND                  Assert That The User Has Logged In Successfully
...                  AND                  Reset App State
Test Timeout         1m
Test Teardown        Close Context
Suite Teardown       Close Browser



*** Test Cases ***
1-Add a product
     [Tags]      Happy    Test    AddProducts
     Add A Product
     Assert Cart Product Count     1

2-Add more than one product
     [Tags]      Happy    Test    AddProducts
     Add A Product
     Add A Product
     Assert Cart Product Count     2







