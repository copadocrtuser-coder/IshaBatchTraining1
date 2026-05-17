*** Settings ***
Library                QVision

*** Test Cases ***
WordPad Test Case
    OpenApplication    WordPad
    ActivateWindow     WordPad

    WriteText          Hello world!
    ClickText          Find
    VerifyText         Find what