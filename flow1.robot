${Manju_TestData.username}${Manju_TestData.Password}#
# Test asset originally created using Copado QEditor.
#

*** Settings ***

Library                QWeb
Library                QForce
Suite Setup            OpenBrowser                 about:blank                 chrome

*** Variables ***
${BaseURL}             https://practicetestautomation.com/practice-test-login/
${username}            ${Manju_TestData.username}
${Password}            ${Manju_TestData.Password}

*** Test Cases ***

ManjuTestHome
    [Documentation]    Test Case created using the QEditor
    OpenBrowser        ${BaseURL}                  chrome
    TypeText           Username                    ${Manju_TestData.username}
    TypeText           Password                    ${Manju_TestData.Password}
    ClickText          Submit
    ClickText          Log out

