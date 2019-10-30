*** Settings ***
Documentation  Robot https://www.youtube.com/watch?v=5tVgC-oQVKs&list=PLUDwpEzHYYLsCHiiihnwl3L0xPspL7BPG&index=9
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demo.automationtesting.in/Windows.html
*** Test Cases ***
switchwindow
    open browser  ${url}  ${browser}
    click element  xpath://button[@class='btn btn-info']
    # to switch next window use switch window with title of window
    select window  Sakinalium | Home
    click link  //ul[@class='nav navbar-nav navbar-right']//a[contains(text(),'Contact')]