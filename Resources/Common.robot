*** Settings ***

###############  Libraries ################

Library     String
Library		Collections
Library     Browser




*** Variables ***

#####   Browser Configuration   #####
${Chromium_Browser}           chromium
${HEADED}                     False
${HEADLESS}                   True

#####   URLS   #####
${Base_URL}           https://www.saucedemo.com/v1/index.html

#####   Credentials   #####
${UserName}                      standard_user
${Password}                      secret_sauce

#####   Sorting options   #####
${From_A_to_Z}         az
${From_Z_to_A}         za
${From_High_to_Low}    hilo
${From_Low_to_High}    lohi
#####   Common elements   #####
${Error_Message}    xpath=//h3[@data-test="error"]


*** Keywords ***

Verify Error Message
    [Arguments]    ${expected_message}
    Get Text    ${ERROR_MESSAGE}    contains    ${expected_message}


