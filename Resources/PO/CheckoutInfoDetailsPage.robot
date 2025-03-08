*** Settings ***


Resource    ../Common.robot



*** Keywords ***
Verify Checkout Page Is Open
    Wait For Elements State    id=checkout_info_container    visible
    Get Element    id=checkout_info_container

Add Shipping details
    [Arguments]    ${firstName}    ${lastName}    ${postalCode}
    Type Text    css=input[id="first-name"]    ${firstName}
    Type Text    css=input[id="last-name"]    ${lastName}
    Type Text    css=input[id="postal-code"]    ${postalCode}

Proceed to checkout summary page
    Click     css=input[value="CONTINUE"]

