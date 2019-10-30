*** Settings ***
Documentation    Suite description
Documentation  webtable  forloop https://www.youtube.com/watch?v=iYXl3MrRHDI&list=PLUDwpEzHYYLsCHiiihnwl3L0xPspL7BPG&index=17
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://testautomationpractice.blogspot.com/

*** Test Cases ***
getalllinks
    Open browser  ${url}   ${browser}
    ${row}=     get element count   xpath://table[@name="BookTable"]/tbody/tr
    ${col}=     get element count   xpath://table[@name="BookTable"]/tbody/tr[1]/th
    Log to Console      ${row}
    Log to Console      ${col}
    #validation of webtable 3 parameter required
    Table column should contain     //table[@name="BookTable"]     2   Author
    table row should contain    //table[@name="BookTable"]     4   Learn JS
    table cell should contain   //table[@name="BookTable"]     5    2   Mukesh
    table header should contain     //table[@name="BookTable"]     BookName




*** Keywords ***
Provided precondition
