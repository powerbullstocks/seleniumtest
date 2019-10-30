*** Settings ***
Documentation  Robot https://www.youtube.com/watch?v=qAB11ABeezw&t=697s
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://seleniumhq.github.io/selenium/docs/api/java/index
*** Test Cases ***
Framealert
    open browser  ${url}  ${browser}

    #Switch to frame here select frame
    select frame  packageListFrame
    click link  xpath://a[@href='org/openqa/selenium/package-frame.html']
    #click link  org.openqa.selenium
    click link  xpath://a[@href='allclasses-frame.html']
    unselect frame

    # move on to the 2nd frame
    select frame  packageFrame
    click link  xpath://a[@href='org/openqa/selenium/remote/server/handler/AcceptAlert.html']
    unselect frame

    close browser







*** Keywords ***
