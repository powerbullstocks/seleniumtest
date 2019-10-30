*** Settings ***
Documentation    Suite description
Library        SeleniumLibrary
Resource    ../Resource/Demosite_resource.robot
Library     DataDriver  ../Testdata/Logindata.xls   sheet_name = sheet1
Suite Setup  Open Demo Browser      https://admin-demo.nopcommerce.com/     chrome
Suite Teardown  Close My Browser
Test Template  Invalid Login


*** Test Cases ***
TC1 Login negative verification     ${Email}    ${Password}


*** Keywords ***
Invalid Login
        [Arguments]     ${Email}    ${Password}
        Enter Email id  ${Email}
        Enter Password  ${Password}
        Click Login
        Verify Unsuccessful Login



