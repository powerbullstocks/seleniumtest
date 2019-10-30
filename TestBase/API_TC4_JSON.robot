*** Settings ***
Documentation   Loading Json file https://www.youtube.com/watch?v=ku6aw5n_a9Q&list=PLUDwpEzHYYLvMLbma_Rp-6jrrpxkeH0VJ&index=6
Library     JSONLibrary
Library     os
Library     Collections


*** Test Cases ***

#https://jsonpath.com/? to verify the path:
#http://jsonpathfinder.com/ to find the path of the node

TC to verify data in JSON file path
   ${json_Bucket}=  load json from file     D:/SeleniumPython/Test_Json.json
   ${Answer}=   get value from json     ${json_Bucket}      $.quiz.maths.q1.answer
   #$answer is a list variable to use [0] to print value alone.
   log to console   ${Answer[0]}
   should be equal      ${Answer[0]}   12

    ${Options}=   get value from json     ${json_Bucket}      $.quiz.maths.q2.options[3]
   #$answer is a list variable to use [0] to print value alone.
   log to console   ${Options[0]}
   should be equal     ${Options[0]}   4


*** Keywords ***
Provided precondition
    Setup system under test