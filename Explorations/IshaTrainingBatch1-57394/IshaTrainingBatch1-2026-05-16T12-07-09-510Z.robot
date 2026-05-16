# Automatically generated from Exploration IshaTrainingBatch1 (ID 57394) on May 16, 2026, 12:07:09 UTC. This is one time conversion.

# Generated from Exploration https://robotic.copado.com/explorations/57394/summary?projectId=93532&orgId=45396&view=details

*** Settings ***
Metadata          Organization Id             45396
Metadata          Project Id                  93532
Metadata          Exploration Id              57394


# You can change imported library to "QWeb" if testing generic web application, not Salesforce.
Library           QForce
Suite Setup       Open Browser                about:blank                 chrome
Suite Teardown    Close All Browsers

*** Test Cases ***

Test case
    GoTo          https://automationintesting.online/
    ClickText     Rooms                       anchor=Amenities
    ClickText     Booking                     anchor=Amenities
    ClickText     Check Availability
    VerifyText    Welcome
    ClickText     Check Availability
    TypeText      Name                        Test
    TypeText      Email                       test@gmail.com
    TypeText      Phone                       1234567890
    TypeText      Subject                     Test Message
    TypeText      /html[1]/body[1]/div[2]/div[1]/section[3]/div[1]/div[1]/div[1]/div[1]/div[1]/form[1]/div[5]/textarea[1]    Hello
    ClickText     Submit
    TypeText      Subject                     Test Message Test
    TypeText      Phone                       123456789011
    VerifyText    Hello
    VerifyText    Test M
    VerifyText    Test Message Test
    CopyText      Test Message Test
    TypeText      /html[1]/body[1]/div[2]/div[1]/section[3]/div[1]/div[1]/div[1]/div[1]/div[1]/form[1]/div[5]/textarea[1]    Hello Test Message Test Test Message Test Test Message Test
    ClickText     Submit
    VerifyText    Thanks for getting in touch Test!
    ClickText     Book now                    anchor=£225
    ClickText     Reserve Now
    TypeText      Firstname                   Tes
    TypeText      Lastname                    Mnj
    TypeText      Email                       test@gmail.com
    TypeText      Phone                       123456789
    # This message is not userfriendly. change this


    ClickText     Reserve Now
    TypeText      Firstname                   John
    VerifyText    Mnj
    TypeText      Lastname                    Smithy
    TypeText      Phone                       123456789011
    ClickText     Reserve Now
    ClickText     Return home
    ClickText     Contact                     anchor=Home
    ClickText     Contact                     anchor=Location
    ClickText     Mark Winteringham