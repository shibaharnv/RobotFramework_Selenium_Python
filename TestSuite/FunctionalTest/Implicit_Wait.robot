*** Settings ***
Documentation  Basic search test
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://rahulshettyacademy.com/AutomationPractice/


*** Test Cases ***

Verify Basic search functionality in Ebay

  [Documentation]    This testcase verifies the basic radio button functionality
  [Tags]        Functional

  Open Browser  ${url}  ${browser}
  Set Selenium Speed	2seconds
 #Select Radio Button  Sex  Female
  Select Radio Button  radioButton  radio1
  Click Element	//input[@value='radio1']
  Select Checkbox  checkBoxOption1
  Unselect Checkbox  checkBoxOption1
  ${speed}=  Get Selenium Speed
  Log To Console  ${speed}
  Close Browser



*** Keywords ***

