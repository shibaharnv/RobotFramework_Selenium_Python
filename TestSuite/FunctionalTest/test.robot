*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***

This is a sample testcase

    [documentation]  Google test
    [tags]  Regression

    Open Browser  https://www.google.com/  chrome
    Close Browser


*** Keywords ***

