*** Settings ***
Documentation    WaitTest practice https://www.youtube.com/watch?v=TeK_X--r1BM
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register


*** Test Cases ***
WaitTestcases
    open browser  ${url}  ${browser}
    Waittc

*** Keywords ***
Waittc
    #sleep   3 # wait for 3 seconds
    #set selenium speed  3 seconds # it ensure to run every statement with 3 seconds interval
    #[timeout]
    wait until page contains  Register
    #set selenium timeout  10 seconds
    set selenium implicit wait  10 seconds
    select radio button  Gender  M
    input text  FirstName  ram
    #${firstnamee}  set variable
    #log to console
    input text  LastName  roy
    input text  Email  test@gmail.com
    input text  Password  password-1
    input text  ConfirmPassword  password-1
    click button  xpath://input[@id='register-button']