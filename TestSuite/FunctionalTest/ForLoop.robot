*** Settings ***
Documentation  Basic search test
Library  SeleniumLibrary

*** Variables ***



*** Test Cases ***
Forloop1
FOR   ${i}     IN RANGE    1   10
       LOG TO CONSOLE    ${i}


#  FOR   ${i}     IN RANGE    1   10
#        LOG TO CONSOLE    ${i}
#  END


Forloop1
  FOR   ${i}     IN RANGE    1   10
        LOG TO CONSOLE    ${i}
  END

Forloop2
  FOR   ${i}     IN  1 2 3 4 5 6 7 8 9 10
        LOG TO CONSOLE    ${i}
  END


Forlooplist
  @{items}  create list  1 2 3 4 5
  FOR   ${i}     IN  @{items}
        LOG TO CONSOLE    ${i}
  END


ForlooplistWithExit
  @{items}  create list  1 2 3 4 5
  FOR   ${i}     IN  @{items}
        LOG TO CONSOLE    ${i}
        Exit For Loop IF    "${i}" == "3"
  END



*** Keywords ***

