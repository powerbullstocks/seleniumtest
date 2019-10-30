*** Settings ***
Documentation  Robot testcase1
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.google.com/

*** Test Cases ***
Dynamic webtable list
    Open browser  ${url}   ${browser}
    Input Text  xpath://input[@class='gLFyf gsfi']  testing
    ${Listelement}  get WebElements    xpath://ul[@role='listbox']//li/descendant::div[@class='sbl1']
    log to console  ${Listelement}
    #Close Browser

*** Keywords ***
