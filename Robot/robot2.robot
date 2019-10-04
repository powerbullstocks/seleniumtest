*** Settings ***
Documentation  Robot testcase1
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
This is some test case
    Open browser  ${url}   ${browser}
    LoginToApplication
    #Close Browser

*** Keywords ***
LoginToApplication
    #Click Link  xpath = //a[@href = '/login?returnUrl=%2F']
    Click Link  xpath://a[@class='ico-login']
    Input Text  xpath://input[@id='Email']  pavanoltraining@gmail.com
    Input Text  xpath://input[@name='Password']  Test@123
    Click Button  xpath://input[@class='button-1 login-button']

