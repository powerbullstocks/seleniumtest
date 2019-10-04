*** Settings ***
Documentation  Radiobutton test
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
This is some test case
    Open browser  ${url}   ${browser}
    Fillingapplication
    #Close Browser

*** Keywords ***
Fillingapplication
    #Click Link  xpath = //a[@href = '/login?returnUrl=%2F']
    Input Text  xpath://input[@name='firstname']  ram
    Input Text  xpath://input[@name='lastname']  roy
    #select  radio button   xpath://input[@namme='sex',@value='Female']  # This will not work as format given below
    #name of the radio button and value of the radio button *Need to give 2 values always
    select radio button  sex  Female
    select radio button  exp  5
    Input Text  xpath://input[@id='datepicker']  2019-01-01
    select checkbox  RedTea
    unselect checkbox  RedTea
