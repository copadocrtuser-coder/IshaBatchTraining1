#
# Test asset originally created using Copado QEditor.
#

*** Settings ***

Library                QWeb
Library                QForce

*** Variables ***
${BaseURL}             https://practicetestautomation.com/practice-test-login/
${username}            student
${Password}            Password123

*** Test Cases ***

ManjuTestHome
    [Documentation]    Test Case created using the QEditor
    OpenBrowser        ${BaseURL}                  chrome
    ClickText          Store
    ClickText          See what's new
    SwitchWindow       NEW
    ClickText          Subscribe
    ClickText          Subscribe                   anchor=. You may opt out at any time.
    ClickText          Share
    ClickText          Mail
    CloseWindow
