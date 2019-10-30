*** Settings ***
Documentation    TC to verify cookies header footer https://www.youtube.com/watch?v=r0HO7KBMsX0&list=PLUDwpEzHYYLvMLbma_Rp-6jrrpxkeH0VJ&index=9
Library  Collections
Library  os
Library  RequestsLibrary
Library  XML

*** Variables ***
${base_url}  http://jsonplaceholder.typicode.com
*** Test Cases ***
TC to veriy the header footer and cookies
    create session  mysession  ${base_url}
    ${response}=  Get request  mysession  /photos
    Log to console  \n${response.headers}
    Log to console  \n${response.headers['Connection']}
    ${contentconnection}=  Get from dictionary  ${response.headers}     Connection
    Log to console  \n${contentconnection}
    should be equal  ${contentconnection}   keep-alive

TC to verify the cookies
    create session  mysession  ${base_url}
    ${response}=  Get request  mysession  /photos
    Log to console  ${response.cookies}
    should not be empty     ${response.cookies}
    #${cookies}=  Get cookies ${response.cookies}
    #Trim to get the specific cookies
    ${cookies}=  Get from dictionary  ${response.cookies}   __cfduid
    Log to console  ${cookies}

*** Keywords ***
Provided precondition
    Setup system under test