*** Settings ***
Library           QWeb
Suite Setup       OpenBrowser                 about:blank    chrome

*** Test Cases ***
Login to Bank
    Goto          https://parabank.parasoft.com/parabank/index.htm
    ClickText     Register
    VerifyText    Signing up is easy!
    TypeText      First Name                  Manju

