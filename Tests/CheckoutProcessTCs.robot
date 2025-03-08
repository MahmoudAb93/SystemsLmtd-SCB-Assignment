#######     Runners     ########
# py -m robot -d Results      -i       Test        Tests
# py -m robot -d Results      -i       CheckoutProcess        Tests
# py -m robot -d Results      -i       Happy        Tests
# py -m robot -d Results      -i       Negative        Tests

*** Settings ***
Resource    ../Resources/PO/LoginPage.robot
Resource    ../Resources/PO/InventoryPage.robot
Resource    ../Resources/Common.robot
Resource    ../Resources/PO/CartDetailsPage.robot
Resource    ../Resources/PO/CheckoutInfoDetailsPage.robot
Resource    ../Resources/PO/CheckoutSummaryDetailsPage.robot


Suite Setup          Run Keywords         New Browser               browser=${Chromium_Browser}    headless=${HEADLESS}
...                  AND                  Set Browser Timeout       1m
Test Setup           Run Keywords         New Context          viewport={'width': 1920, 'height': 1080}
...                  AND                  Open Sauce Labs And Fill Login Details  ${UserName}   ${Password}
...                  AND                  Click On Login Button
...                  AND                  Assert That The User Has Logged In Successfully
...                  AND                  Reset App State
...                  AND                  Add A Product
...                  AND                  Assert Cart Product Count     1
...                  AND                  Click On Cart
...                  AND                  Assert that the user have successfully navigated to Cart Page
Test Timeout         1m
Test Teardown        Close Context
Suite Teardown       Close Browser



*** Test Cases ***
1-Proceed with checkout successfully
     [Tags]      Happy    Test    CheckoutProcess
     Proceed To Checkout
     Verify Checkout Page Is Open
     Add Shipping details     Mahmoud     Attia     1234567
     Proceed to checkout summary page
     Verify Checkout Summary Is Open
     Complete Purchase
     Verify Order Completion
     
2-Check that the user cannot proceed with checkout without first name
     [Tags]      Negative    Test    CheckoutProcess
     Proceed To Checkout
     Verify Checkout Page Is Open
     Add Shipping details     ${EMPTY}     Attia     1234567
     Proceed to checkout summary page
     Verify Error Message    First Name is required

     
3-Check that the user cannot proceed with checkout without last name
     [Tags]      Negative    Test    CheckoutProcess
     Proceed To Checkout
     Verify Checkout Page Is Open
     Add Shipping details     Mahmoud     ${EMPTY}     1234567
     Proceed to checkout summary page
     Verify Error Message    Last Name is required
     
4-Check that the user cannot proceed with checkout without zip/postal code
     [Tags]      Negative    Test    CheckoutProcess
     Proceed To Checkout
     Verify Checkout Page Is Open
     Add Shipping details     Mahmoud     Attia     ${EMPTY}
     Proceed to checkout summary page
     Verify Error Message    Postal Code is required








