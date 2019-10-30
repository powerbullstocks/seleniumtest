*** Settings ***
Documentation    JSON RESPONSE VERIFICATION
Library     RequestsLibrary
Library     SeleniumLibrary
Library     Collections
Library     os
Library     String
Library     JSONLibrary
Library     JSON

*** Variables ***
${GET_URL}      http://restcountries.eu
*** Test Cases ***
TC to verify the response from the URL
    create session  mysession   ${GET_URL}
    ${response}=     get request  mysession  /rest/v2/alpha/IN
    log to console      ${response}
    # importanat to json is needed not convert to string
    ${CONTENT}=     to json   ${response.content}
    #log to console  ${CONTENT.currencies[0].name}
    ${currency_name}=   get value from json      ${CONTENT}      $.currencies[0].name
    log to console      ${currency_name[0]}
    ${border_name}=   get value from json      ${CONTENT}      $.borders[0]
    log to console      ${border_name[0]}
    #TO VERIFY MULTIPLE VALUES
    ${MUL_border_name}=   get value from json      ${CONTENT}      $.borders
    log to console      ${MUL_border_name[0]}
    should contain any      ${MUL_border_name[0]}   AFG     BGD     BTN     MMR     ABC



*** Keywords ***
Provided precondition
    Setup system under test