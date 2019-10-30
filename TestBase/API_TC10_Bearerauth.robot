*** Settings ***
Documentation    Basic authentication https://www.youtube.com/watch?v=TEq1eAuqPtg&list=PLUDwpEzHYYLvMLbma_Rp-6jrrpxkeH0VJ&index=10
Library     Collections
Library     RequestsLibrary
Library     OperatingSystem  # os is different library to load file - get file


*** Variables ***
${base_url}     https://certtransaction.elementexpress.com
${bearerToken}      "Bearer E4F284BFADA11D01A52508ED7B92FFD7EE0905659F5DED06A4B73FC7739B48A287648801"


*** Test Cases ***
TC for Bearer authentication
    create session  mysession   ${base_url}
    ${header}   create dictionary   auth=${bearerToken}     Content-Type=text/xml; charset=utf-8
    ${req_body}=    get file    D:/SeleniumPython/PostData.txt
    # / represent to send the same url on the mysession.
    ${response}=    post request    mysession  /  data=${req_body}    headers=${header}

    log to console  \n${response.status_code}
    log to console  \n${response.content}

*** Keywords ***
Provided precondition
    Setup system under test