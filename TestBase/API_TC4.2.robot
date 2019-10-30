*** Settings ***
Documentation    JSON RESPONSE VERIFICATION using JSOn loads
Library     RequestsLibrary
Library     SeleniumLibrary
Library     Collections
Library     os
Library     String
Library     JSONLibrary
Library    HttpLibrary.HTTP
Library    OperatingSystem

*** Variables ***
${GET_URL}      http://restcountries.eu
*** Test Cases ***
TC to verify the response from the URL
    create session  mysession   ${GET_URL}
    ${response}=     get request  mysession  /rest/v2/alpha/IN
    #${thedata}=    Evaluate    json.loads(${response.content})     json
    ${thedata}=    convert to string    (${response.content})
    #Should be equal    ${thedata['currencies']['name']}    Indian rupee
    ${data1}=   get value from json    ${response.content}   $.name
    log to console   ${data1[1]}