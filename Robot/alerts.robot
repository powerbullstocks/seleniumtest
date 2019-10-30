*** Settings ***
Documentation    Suite description
Documentation  https://www.youtube.com/watch?v=qAB11ABeezw&list=PLUDwpEzHYYLsCHiiihnwl3L0xPspL7BPG&index=8
Library  Selenium2Library


*** Variables ***
${browser}  chrome
${url}  http://testautomationpractice.blogspot.com/
*** Test Cases ***
Popalert
    open browser  ${url}  ${browser}
    click button  xpath://button[@onclick='myFunction()']
    sleep   3

    #Pop up window alert accept and dismiss
    handle alert    accept
    #handle alert   dismiss
    #handle alert   leave
    #alert should be present    press a button!
    ${Value1} =  get value  xpath://p[@id='demo']
    log to console  ${Value1}





*** Keywords ***
Provided precondition
    Setup system under test