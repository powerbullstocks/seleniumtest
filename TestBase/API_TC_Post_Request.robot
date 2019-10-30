*** Settings ***
Documentation    Post Request https://www.youtube.com/watch?v=7AvEryZhUWc&list=PLUDwpEzHYYLvMLbma_Rp-6jrrpxkeH0VJ&index=3
Library     RequestsLibrary
Library     SeleniumLibrary
Library     Collections         # this is for dictionary

*** Variables ***
${base_url}     http://restapi.demoqa.com/customer
#${city}     Delhi


*** Test Cases ***
Put customer registration
    create session  myssion     ${base_url}
    ${body}=    create dictionary   FirstName=Ramedroys   LastName=royd9e8s76     UserName=11e2sd454     Password=yoursedbuck   Email=ywteeue@gmail.com
    #${body}=    create dictionary
    ${header}=  create dictionary   Content-Type=application/json
    #Post request must need body (data) and header it may be json
    ${response}=    post request    myssion    /register   data=${body}    headers=${header}
    log to console     ${response.status_code}
    log to console     ${response.content}

    # covert to string as it is in json
    ${status_code}=     convert to string    ${response.status_code}
    log to console      ${status_code}
    should be equal     ${status_code}      201

    ${received}=    convert to string    ${response.content}
    should contain  ${received}    OPERATION_SUCCESS
    should contain  ${received}    Operation completed successfully

