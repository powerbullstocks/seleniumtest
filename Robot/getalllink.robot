*** Settings ***
Documentation    Suite description
Documentation  getlinks and make forloop https://www.youtube.com/watch?v=qqbgRXlX4w0&list=PLUDwpEzHYYLsCHiiihnwl3L0xPspL7BPG&index=16
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://www.newtours.demoaut.com/

*** Test Cases ***
getalllinks
    Open browser  ${url}   ${browser}
    ${elecount} =   get element count   xpath://a
    Log to Console  ${elecount}
    @{linkitem}     create list
    : FOR   ${i}    IN RANGE    1   ${elecount}
    \       ${Linktext}=    get text    xpath:(//a)[${i}]
    \       Log to Console  ${Linktext}




*** Keywords ***
Provided preconditio
