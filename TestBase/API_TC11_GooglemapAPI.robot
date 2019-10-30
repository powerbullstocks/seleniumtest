*** Settings ***
Documentation    google map api https://www.youtube.com/watch?v=Y4POpfJbDKs&list=PLUDwpEzHYYLvMLbma_Rp-6jrrpxkeH0VJ&index=12
Library     RequestsLibrary
Library     Collections

*** Variables ***
${base_url}     https://maps.googleapis.com
${request_url}   /maps/api/place/nearbysearch/xml?

*** Test Cases ***
TC for Google map places api
    create session  mysession   ${base_url}
    ${param}=   create dictionary   location=-33.8670522,151.1957362       radius=500     types=food      name=harbour       key=AIzaSyA9EZlyJnUXWL2waTrH-84CA1xxcv3UWAc
    ${response}=    get request     mysession   ${request_url}  params=${param}
    log to console  \n${response.status_code}
    log to console  \n${response.content}
    log to console  \n${response.headers}


*** Keywords ***
Provided precondition
    Setup system under test