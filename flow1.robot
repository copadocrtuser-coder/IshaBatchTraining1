*** Settings ***
Library                QWeb
Library                QForce
Suite Setup            OpenBrowser                 about:blank                 chrome
Suite Teardown         CloseBrowser
Test Template          Login With Dataset

*** Variables ***
${BaseURL}             https://practicetestautomation.com/practice-test-login/

*** Test Cases ***
ManjuTestHome
    [Documentation]    Run login test for every row in Manju_TestData
    [Tags]             DataTable:Manju_TestData
    Login With Dataset

*** Keywords ***
Login With Dataset
    GoTo               ${BaseURL}
    TypeText           Username                    ${Manju_TestData.username}
    TypeText           Password                    ${Manju_TestData.Password}
    ClickText          Submit
    VerifyText         Congratulations
    ClickText          Log out