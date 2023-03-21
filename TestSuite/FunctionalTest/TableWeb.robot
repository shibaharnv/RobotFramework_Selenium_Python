*** Settings ***
Documentation  Basic search test
Library  SeleniumLibrary
Library  SeleniumLibrary
*** Variables ***



*** Test Cases ***

table validation

  open browser  https://testautomationpractice.blogspot.com/  chrome
  maximize browser window
  ${rowscount}=  get element count  xpath://table[@name='BookTable']/tbody/tr
  ${columnscount}=  get element count  xpath://table[@name='BookTable']/tbody/tr[1]/th
  log to console  ${rowscount}
  log to console  ${columnscount}

#  FOR  ${i}     IN RANGE  1  ${linkscount}
#     ${link_text}=  Get Text  xpath:(//a)[${i}]
#     log to console  ${link_text}
#  END