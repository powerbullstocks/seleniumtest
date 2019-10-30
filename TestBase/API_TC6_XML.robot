*** Settings ***
Documentation    XML verification in API https://www.youtube.com/watch?v=CWAMjGi1mpI&list=PLUDwpEzHYYLvMLbma_Rp-6jrrpxkeH0VJ&index=7
Library     XML
Library     os
Library     Collections
Library     RequestsLibrary
Library     rwb.DebugLibrary
Library     BuiltIn
#Library     ListCreationLibrary
Library     String



*** Test Cases ***
Test case to verify xml file
    ${Xml_File}=    parse xml      D:/SeleniumPython/xmlsample.xml

    #Validations - Approach 1
    #Verifty the specific text under some element
    #important - id is given on each root. here book id value.
    ${author}=  get element text    ${Xml_File}     .//book[1]/author
    should be equal     ${author}   Gambardella, Matthew

    #Approach 2 to capture the element not text under some element.
     ${author}=  get element    ${Xml_File}     .//book[1]/author
     should be equal     ${author.text}   Gambardella, Matthew

TC to read from the xml list:
     #Approach 3
      ${Xml_File}=    parse xml      D:/SeleniumPython/xmlsample.xml
      ${author}=  get elements texts   ${Xml_File}     .//book/author
      # get the count of the element
      ${AuthorCounts}=  Get Element Count  ${Xml_File}     .//book/author
      #${items}=  convert to string   ${author}
      #${COUNT}=  Get Element Count  ${items}
      #${Counts}=  Get Element Count  .//book/author
      #log  ${COUNT}
      log  \n${AuthorCounts}
      #${items}=  convert to string   ${author}
      FOR  ${item}  IN RANGE  ${AuthorCounts}
          Run Keyword If  '${item}' == '5'     Log to console  \n${author[${item}]}  Exit For Loop
          #If  '${author[${item}]}' == 'Randall, Cynthia'     Log to console  \n elementpresent  Exit For Loop
          #...   ELSE    Continue For Loop

          #Log to console  \n${item}
      END
      #\     Run Keyword If  "${i}" == "Thurman, Paula"     Log to console    \n${i}


    #Approach 4 get text in a single statment
      #element text should be    ${author}   Gambardella, Matthew    .//book[1]/author
TC to count the book id in the xml
      ${Xml_File}=    parse xml      D:/SeleniumPython/xmlsample.xml
      ${author}=  get elements texts   ${Xml_File}     .//book/author
      # get the count of the element
      ${BookidCounts}=  Get Element Count  ${Xml_File}     .//book
      log to console  \n${BookidCounts}
      #should be equal  ${BookidCounts}  12
      should be equal as integers   ${BookidCounts}  12

TC to pull the book id from the xml
      ${Xml_File}=    parse xml      D:/SeleniumPython/xmlsample.xml
      ${book_id}=  get elements texts   ${Xml_File}     .//book[3]
      #${book_id}=  Get Element   ${Xml_File}  id:bk101  .//book[3]
      log to console  \n${book_id}
      ${BookidCounts}=  Get Element Count  ${Xml_File}    .//book[3]
      log to console  \n${BookidCounts}
      FOR  ${item}  IN RANGE    ${BookidCounts}
        Log to console  /n${book_id[${item}]}
      END

TC to get the child elements from parent element
      ${Xml_File}=    parse xml      D:/SeleniumPython/xmlsample.xml
      ${childelements}=  get child elements   ${Xml_File}     .//book[1]
      should not be empty   ${childelements}
      ${authorvalue}=  get element text  ${childelements[0]}
      ${title}=  get element text  ${childelements[1]}
      ${genre}=  get element text  ${childelements[2]}

      Log to console  /n${authorvalue}
      Log to console  /n${title}
      Log to console  /n${genre}
      should be equal   ${genre}  Computer



