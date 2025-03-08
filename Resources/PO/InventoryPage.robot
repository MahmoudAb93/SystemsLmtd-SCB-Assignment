*** Settings ***

Resource             ../Common.robot

*** Variables ***
${PRODUCT_SORT_DROPDOWN}     xpath=//select[@class="product_sort_container"]
${ADD_BUTTON}              xpath=(//button[contains(text(),"ADD TO CART")])[1]
${REMOVE_BUTTON}           xpath=(//button[contains(text(),"REMOVE")])[1]
${MENU_BUTTON}               xpath=//button[contains(text(),"Open Menu")]
${LOGOUT_LINK}               id=logout_sidebar_link
${RESET_APP_STATE_LINK}      id=reset_sidebar_link
${SHOPPING_CART_LINK}        id=shopping_cart_container
*** Keywords ***
Assert that the user has logged in successfully
        Get Element       css=.inventory_list

Sort Products
    [Arguments]    ${sort_option}

    Select Options By    ${PRODUCT_SORT_DROPDOWN}    value    ${sort_option}

Add a product
    click                   ${ADD_BUTTON}

Remove a product
    click                   ${REMOVE_BUTTON}



Assert Cart Product Count
    [Arguments]    ${available_products}
    IF    ${available_products} > 0
    ${cartCount}=    Get Text    css=span.shopping_cart_badge
    Should Be Equal As Numbers    ${cartCount}    ${available_products}
    ELSE
        Log        Cart is empty
    END


Open Menu
    Click    ${MENU_BUTTON}

Logout
       Click    ${LOGOUT_LINK}

Click On Cart
    Click    ${SHOPPING_CART_LINK}

Reset App State
    Open Menu
    Click    ${RESET_APP_STATE_LINK}
    Click    xpath=//button[contains(text(),"Close Menu")]