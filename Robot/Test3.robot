*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Library     BuiltIn
#Library     ListCreationLibrary
Library     String

*** Variables ***
@{LIST}         a    b    c

*** Test Cases ***
Manage index manually
    ${index}=    Set Variable    -1
    FOR     ${item}    IN    @{LIST}
        ${index} =    Evaluate    ${index} + 1
        Log  \n${index} ${item}
    END

For-in-enumerate
    FOR    ${index}    ${item}    IN ENUMERATE    @{LIST}
        Log  \n${index} ${item}
    END


