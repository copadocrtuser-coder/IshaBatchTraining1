*** Settings ***
Library           QWeb
Suite Setup       OpenBrowser                 about:blank               chrome

*** Test Cases ***
Login to Bank
    Goto          https://parabank.parasoft.com/parabank/index.htm
    ClickText     Register
    VerifyText    Signing up is easy!
    TypeText      First Name                  Manju
    TypeText      Last Name                   Jay
    TypeText      Address                     5 George Street,Sydney
    TypeText      City                        Sydney
    TypeText      State                       New Hampshire
    TypeText      Zip Code                    2769
    TypeText      Phone #:                    0474387348
    TypeText      SSN                         123456788
    TypeText      Username                    9maytest                  index=2
    TypeText      Password                    raksha123                 index=2
    TypeText      Confirm                     raksha123
    ClickText     REGISTER                    anchor=Confirm

