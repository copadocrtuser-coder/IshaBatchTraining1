# Automatically generated from Exploration IshaTrainingBatch1 (ID 57394) on May 16, 2026, 12:07:09 UTC. This is one time conversion.

# Generated from Exploration https://robotic.copado.com/explorations/57394/summary?projectId=93532&orgId=45396&view=details

*** Settings ***
Metadata            Organization Id             45396
Metadata            Project Id                  93532
Metadata            Exploration Id              57394


# You can change imported library to "QWeb" if testing generic web application, not Salesforce.
Library             QForce
Suite Setup         Open Browser                about:blank                 chrome
Suite Teardown      Close All Browsers

*** Variables ***
${Manju}            Manju123

*** Test Cases ***

Test case
    Appstate        Home
    GoTo            https://automationintesting.online/
    Open browser    https://automationintesting.online/                     chrome        timeout=5s
    GoTo            https://parabank.parasoft.com/parabank/register.htm
    TypeSecret      Password                    ${Manju}
    RefreshPage


    ClickText       Register
    TypeText        customer.firstName          Test
    TypeText        customer.lastName           test
    TypeText        customer.address.street     test
    TypeText        customer.address.city       test
    TypeText        customer.address.state      test
    TypeText        customer.address.zipCode    test
    TypeText        customer.phoneNumber        test
    TypeText        customer.ssn                test
    TypeText        customer.username           test
    TypeSecret      customer.password           test
    TypeSecret      repeatedPassword            test
    ClickText       Register
    ClickText       Open New Account
    ClickText       Open New Account
    ClickText       30327
    ClickText       Funds Transfer Received
    ClickText       Find Transactions
    ClickText       Find Transactions           anchor=Find by Transaction ID
    ClickText       Bill Pay
    ClickText       Find Transactions
    ClickText       Update Contact Info
    ClickText       Request Loan
    ClickText       Products                    anchor=Admin Page
    ClickText       Learn More                  anchor=Find the Testing Solution That Fits Your Team Perfectly
    ClickText       Learn More                  anchor=MISRA

File Download
    GoTo            https://demo.automationtesting.in/FileDownload.html
    ClickText       Download                    anchor=Computers & Electronics
    ClickElement    //a[@type\='button']
    SaveFile        Download                    samplefile.pdf


    GoTo            https://demo.automationtesting.in/FileDownload.html
    VerifyText      File Download Demo for Automation
    SaveFile        //a[@type\='button']        samplefile.pdf
    SaveFile        //a[contains(text(),'Download')]                        samplefile.pdf
    VerifyFile      samplefile.pdf

Upload File
    GoTo            https://practice.expandtesting.com/upload
    ClickText       Choose File


    ClickText       Upload
    TypeText        file                        C:\\fakepath\\__init__.py
    ClickText       Upload

RestBooker
    ClickText       Rooms                       anchor=Amenities
    ClickText       Booking                     anchor=Amenities
    ClickText       Check Availability
    VerifyText      Welcome
    ClickText       Check Availability
    TypeText        Name                        Test
    TypeText        Email                       test@gmail.com
    TypeText        Phone                       1234567890
    TypeText        Subject                     Test Message
    TypeText        /html[1]/body[1]/div[2]/div[1]/section[3]/div[1]/div[1]/div[1]/div[1]/div[1]/form[1]/div[5]/textarea[1]    Hello
    ClickText       Submit
    TypeText        Subject                     Test Message Test
    TypeText        Phone                       123456789011
    VerifyText      Hello
    VerifyText      Test M
    VerifyText      Test Message Test
    CopyText        Test Message Test
    TypeText        /html[1]/body[1]/div[2]/div[1]/section[3]/div[1]/div[1]/div[1]/div[1]/div[1]/form[1]/div[5]/textarea[1]    Hello Test Message Test Test Message Test Test Message Test
    ClickText       Submit
    VerifyText      Thanks for getting in touch Test!
    ClickText       Book now                    anchor=£225
    ClickText       Reserve Now
    TypeText        Firstname                   Tes
    TypeText        Lastname                    Mnj
    TypeText        Email                       test@gmail.com
    TypeText        Phone                       123456789
    # This message is not userfriendly. change this


    ClickText       Reserve Now
    TypeText        Firstname                   John
    VerifyText      Mnj
    TypeText        Lastname                    Smithy
    TypeText        Phone                       123456789011
    ClickText       Reserve Now
    ClickText       Return home
    ClickText       Contact                     anchor=Home
    ClickText       Contact                     anchor=Location
    ClickText       Mark Winteringham

*** Keywords ***
Home
    Open browser    https://parabank.parasoft.com/parabank/register.htm     chrome