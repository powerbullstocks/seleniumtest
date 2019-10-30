*** Settings ***
Documentation    to verify the response https://www.youtube.com/watch?v=Ze9KYtpYAq0&list=PLUDwpEzHYYLvMLbma_Rp-6jrrpxkeH0VJ&index=8
Library     os
Library     Collections
Library     XML
Library     RequestsLibrary

*** Variables ***
${base_URL}     http://thomas-bayer.com

*** Test Cases ***
TC to get the response as xml from string
    create session  mysession     ${base_URL}
    ${response}=  get request  mysession       /sqlrest/CUSTOMER/15
    ${xml_string}=  convert to string    ${response.content}\
    ${xml_obj}=     parse xml   ${xml_string}

    #check single element value
    element text should be   ${xml_obj}  15  .//ID

    #Get the child elements
    ${child_element}=  Get child elements  ${xml_obj}
    should not be empty     ${child_element}

    ${id}=  Get element text    ${child_element[0]}
    ${fname}=  Get element text     ${child_element[1]}
    ${lname}=  Get element text     ${child_element[2]}
    ${street}=  Get element text     ${child_element[3]}
    ${city}=  Get element text     ${child_element[4]}
    should be equal  ${id}  15




*** Keywords ***
Provided precondition
    Setup system under test