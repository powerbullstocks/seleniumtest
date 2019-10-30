*** Settings ***
Documentation    Basic authentication https://www.youtube.com/watch?v=TEq1eAuqPtg&list=PLUDwpEzHYYLvMLbma_Rp-6jrrpxkeH0VJ&index=10
Library     Collections
Library     RequestsLibrary

*** Variables ***
${base_url}     http://restapi.demoqa.com

*** Test Cases ***
TC to send with Basic authentication in xml Userid and password is must
    ${auth}=    create list  ToolsQA  TestPassword
    create session  mysession   ${base_url}         auth=${auth}
    ${response}=    get request  mysession   /authentication/CheckForAuthentication/
    log to console  ${response.content}





*** Keywords ***
