*** Settings ***
Library                QVision
Library                QWeb
Suite Setup            OpenBrowser     about:blank    chrome

*** Test Cases ***
WordPad Test Case
    OpenApplication    WordPad
    ActivateWindow     WordPad

    WriteText          Hello world!
    ClickText          Find
    VerifyText         Find what