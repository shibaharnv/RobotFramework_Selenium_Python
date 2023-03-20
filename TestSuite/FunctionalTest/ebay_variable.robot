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

  Open Browser  ${url}  ${browser}
  ${"search_button"}  Set Variable  //*[@id='gh-btn']
  Element Should Be Visible  ${"search_button"}
  Close Browser



*** Keywords ***

