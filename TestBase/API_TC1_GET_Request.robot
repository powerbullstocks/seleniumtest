*** Settings ***
Documentation    Get REquest
Library     RequestsLibrary
Library     SeleniumLibrary
Library     Collections

*** Variables ***
${base_url}     http://restapi.demoqa.com
${city}     Delhi

*** Test Cases ***
Get_weaterinfo
    create session  myssion     ${base_url}
    ${response}=   get request  myssion     /utilities/weather/city/${city}
    #log to console  ${response.status_code}
    #log to console  ${response.content}
    #log to console  ${response.headers}
    ${status_code}=   convert to string     ${response.status_code}
    should be equal   ${status_code}  200
    ${body}=    convert to string    ${response.content}
    should contain  ${body}     Delhi
    # To read from table use like dictionary and library collection
    ${Contenttypevalue}=     get from dictionary    ${response.headers}     Content-Type
    should be equal     ${Contenttypevalue}     application/json






*** Keywords ***
Provided precondition
    Setup system under test