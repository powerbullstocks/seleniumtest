*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Resource    ../Resource/Registration.robot
Documentation  Registration Test case for Mercury page

*** Variables ***
${Browser}    chrome  #headlesschrome
${QAURL}    http://newtours.demoaut.com
${Firstname}    Ram
${Lastname}     Roy
${Phone}        789654123
${Email}        test@gmail.com
${Address1}     124,matt stret
${Address2}     lansdale
${city}         lansdale
${state}        pennsylvania
${postal}       600061
${country}      INDIA
${userid}       testrun2
${password}     testrun
${confirmpassword}      testrun

*** Test Cases ***
TC1 User Registration
    Open Registration page  ${QAURL}    ${Browser}
    Enter Firstname     ${Firstname}
    Enter Lastname      ${Lastname}
    Enter Phonenumber   ${Phone}
    Enter Emailid       ${Email}
    Enter Registeraddress 1st line  ${Address1}
    Enter Registeraddress 2nd line      ${Address2}
    Enter City name     ${city}
    Enter State name    ${state}
    Enter post number   ${postal}
    Select Country      ${country}
    Enter Userid        ${userid}
    Enter Password      ${password}
    Enter confirm password      ${confirmpassword}
    Click on submit
    Successful Verification
    Close My Browser







