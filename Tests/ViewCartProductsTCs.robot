#######     Runners     ########
# py -m robot -d Results      -i       Test        Tests
# py -m robot -d Results      -i       ViewCart        Tests
# py -m robot -d Results      -i       Happy        Tests
# py -m robot -d Results      -i       Negative        Tests

*** Settings ***
Resource    ../Resources/PO/LoginPage.robot
Resource    ../Resources/PO/InventoryPage.robot
Resource    ../Resources/Common.robot
Resource    ../Resources/PO/CartDetailsPage.robot


Suite Setup          Run Keywords         New Browser               browser=${Chromium_Browser}    headless=${HEADLESS}
...                  AND                  Set Browser Timeout       5s
Test Setup           Run Keywords         New Context          viewport={'width': 1920, 'height': 1080}
...                  AND                  Open Sauce Labs And Fill Login Details  ${UserName}   ${Password}
...                  AND                  Click On Login Button
...                  AND                  Assert That The User Has Logged In Successfully
...                  AND                  Add A Product
...                  AND                  Assert Cart Product Count     1
Test Timeout         5s
Test Teardown        Close Context
Suite Teardown       Close Browser



*** Test Cases ***
1-View Added products in the cart
     [Tags]      Happy    Test    ViewCart
     Click On Cart
     Assert that the user have successfully navigated to Cart Page
     Verify number of Cart Products     1
     Check That Checkout Button Is Present
     Check That Continue Shopping Button Is Present







