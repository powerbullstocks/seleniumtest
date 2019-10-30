*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Resource    ../Resource/login_resource.robot
Suite Setup     Open My Browser
Suite Teardown      Close My Browser
Test Template   Invalid Login


*** Test Cases ***      username        password
Right username and empty password       admin@yourstore.com     ${EMPTY}
Right username and wrong password       admin@yourstore.com     xyz


*** Keywords ***
Invalid Login
    [Arguments]     ${username}     ${password}
    Input Username    ${username}
    Input Password    ${password}
    Click Login Button
    Error message should be visible

