${Manju_TestData.username}${Manju_TestData.Password}#
# Test asset originally created using Copado QEditor.
#

*** Settings ***

Library                QWeb
Library                QForce
Suite Setup            OpenBrowser                 about:blank         chrome

*** Variables ***
${BaseURL}             https://practicetestautomation.com/practice-test-login/
${username}            ${Manju_TestData.username}
${Password}            ${Manju_TestData.Password}

*** Test Cases ***

    [Documentation]    Data-driven test that loops through all rows in Manju_TestData dataset
    FOR                ${row}                      IN                  @{Manju_TestData}
        GoTo           ${BaseURL}
        TypeText       Username                    ${row}[username]
        TypeText       Password                    ${row}[Password]
        ClickText      Submit
        VerifyText     Logged In Successfully
        ClickText      Log out
    END

