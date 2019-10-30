*** Settings ***
Documentation    Data reading from excel through robot framework.
Library     SeleniumLibrary
Library     openpyxl
Library     String
Library     BuiltIn

*** Variables ***
${excel}         Logindata.xlsx
${CURRDIR}       C:/Users/revat/seleniumtest/seleniumtest/Testdata

*** Test Cases ***
TC1 Testload from Data Excel
    ${wb}   Load Workbook       ${CURRDIR}/${excel}
    ${ws}   Set Variable        ${wb.get_sheet_by_name('Sheet1')}
    ${Celldata}     Set Variable    ${ws.cell(3,1).value}
    #${body}    Fetch From Right    ${celldata}     {}
    Log To Console      ${Celldata}

