*** Settings ***
Documentation  Basic search test
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.ebay.com/


*** Test Cases ***

Verify Basic search functionality in Ebay

  [Documentation]    This testcase verifies the basic search functionality in Ebay
  [Tags]        Functional

  #Open Browser  https://www.ebay.com/  chrome
  Open Browser  ${url}  ${browser}
  SearchApplication
#  Input Text  //input[@type='text']  mobile
#  Click Button  //input[@type='submit']
#  Page Should Contain  results for mobile
#  ${id}=	Get Element Attribute  //input[@type='text']  id
  Close Browser

*** Keywords ***

SearchApplication
  Input Text  //input[@type='text']  mobile
  Click Button  //input[@type='submit']
  Page Should Contain  results for mobile
  ${id}=	Get Element Attribute  //input[@type='text']  id
