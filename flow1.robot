${Manju_TestData.username}${Manju_TestData.Password}#
# Test asset originally created using Copado QEditor.
#

*** Settings ***

Library                QWeb
Library                QForce
Suite Setup            OpenBrowser                 about:blank                 chrome

*** Variables ***
${BaseURL}             https://practicetestautomation.com/practice-test-login/
${username}            student
${Password}            Password123

*** Test Cases ***

ManjuTestHome
    [Documentation]    Test Case created using the QEditor
    OpenBrowser        ${BaseURL}                  chrome
    TypeText           Username                    ${username}
    TypeText           Password                    ${Password}
    ClickText          Submit
    
