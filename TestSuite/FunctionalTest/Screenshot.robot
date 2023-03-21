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

  Open Browser  https://rahulshettyacademy.com/AutomationPractice/  chrome
  Set Selenium Speed	2seconds
  Capture Element Screenshot  id:openwindow  element.png
  Capture Page Screenshot  /Users/shibahar/PycharmProjects/RobotAutomationFramework/testing.png


  Close Browser






*** Keywords ***

