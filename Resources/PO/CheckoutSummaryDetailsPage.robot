*** Settings ***


Resource    ../Common.robot



*** Keywords ***
Verify Checkout Summary Is Open
    Wait For Elements State    id=checkout_summary_container    visible
    Get Element    id=checkout_summary_container


Complete Purchase
    Click    xpath=//a[contains(text(),"FINISH")]


Verify Order Completion
    Wait For Elements State    css=h2.complete-header    visible
    Get Text    css=h2.complete-header    contains    THANK YOU FOR YOUR ORDER
