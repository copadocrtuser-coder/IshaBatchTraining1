*** Settings ***
Library                     QWeb
Library                     QForce
Suite Setup                 OpenBrowser                 about:blank                 chrome
Suite Teardown              CloseBrowser

*** Variables ***
${BaseURL}                  https://practicetestautomation.com/practice-test-login/
${Manju_TestData.username}
${Manju_TestData.Password}

*** Test Cases ***
ManjuTestHome
    [Documentation]         Test using Dataset 01 values from Manju_TestData
    GoTo                    ${BaseURL}
    TypeText                Username                    ${Manju_TestData.username}
    TypeText                Password                    ${Manju_TestData.Password}
    ClickText               Submit
    VerifyText              Congratulations
    ClickText               Log out