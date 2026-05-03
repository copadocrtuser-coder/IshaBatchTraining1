#
# Test asset originally created using Copado QEditor.
#

*** Settings ***

Library    QWeb
Library    QForce

*** Test Cases ***

ManjuTestHome
    [Documentation]   Test Case created using the QEditor
    OpenBrowser       https://google.com/   chrome
    ClickText         Store
    ClickText         See what's new
    SwitchWindow      NEW
    ClickText         Subscribe
    ClickText         Subscribe         anchor=. You may opt out at any time.
    ClickText         Share
    ClickText         Mail
    CloseWindow
