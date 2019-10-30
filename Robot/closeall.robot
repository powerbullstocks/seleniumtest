*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Documentation   https://www.youtube.com/watch?v=ulf_1Gmkfak&list=PLUDwpEzHYYLsCHiiihnwl3L0xPspL7BPG&index=7

*** Variables ***
${browser}  chrome
${url1}  http://demowebshop.tricentis.com/register
${url2}  http://google.com



*** Test Cases ***
Multibrowsertest
    open browser  ${url1}  ${browser}
    open browser  ${url2}  ${browser}
    #it close the last browser opened.
    close  browser
    #to close all browser
    close all browser


*** Keywords ***
Provided precondition
    Setup system under test