# Automatically generated from Exploration testManju (ID 57389) on May 16, 2026, 08:16:25 UTC. This is one time conversion.

# Generated from Exploration https://robotic.copado.com/explorations/57389/summary?projectId=93532&orgId=45396&view=details

*** Settings ***
Metadata            Organization Id          45396
Metadata            Project Id               93532
Metadata            Exploration Id           57389


# You can change imported library to "QWeb" if testing generic web application, not Salesforce.
Library             QForce
Suite Setup         Open Browser             about:blank                 chrome
Suite Teardown      Close All Browsers

*** Test Cases ***

Test case
    GoTo            https://propic.com.au
    ClickText       Solutis
    ClickText       Sales                    anchor=Solutions
    ClickText       Get in touch             anchor=Terms and Conditions
    ClickText       Submit
    ClickText       Back to site
    ClickItem       LinkedIn
    SwitchWindow    NEW
    ClickText       Dismiss
    SwitchWindow    1