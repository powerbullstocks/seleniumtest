*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Resource    ../Resource/login_resource.robot



*** Variables ***
${Browser}      chrome
${QAURL}      http://newtours.demoaut.com
${user}     mercury
${pwd}      mercury


*** Test Cases ***
Login Scenarios
    Open My Browser     ${QAURL}  ${Browser}
    Enter Username      ${user}
    Enter Password      ${pwd}
    Click Login Button
    sleep   5   seconds
    Verify home page
    Close My Browser

