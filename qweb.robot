*** Settings ***
Library                   QVision
Library                   QWeb
Suite Setup               OpenBrowser     about:blank    chrome

*** Test Cases ***
WordPad Test Case
    OpenApplication       WordPad
    ActivateWindow        WordPad

    QVision.WriteText     Hello world!
    QWeb.ClickText        Find
    QVision.VerifyText    Find what