*** Settings ***
Suite Setup       Open Browser    http://jqueryui.com/    firefox
Suite Teardown    Close Browser
Resource          seleniumLibrary.robot
Library           Selenium2Library

*** Variables ***
${undefined}      http://jqueryui.com/

*** Test Cases ***
Test Case
    open    /autocomplete/
    sendKeys    id=tags    a
    waitForText    id=ui-id-2    ActionScript
    mouseOver    id=ui-id-2    ActionScript
    click    id=ui-id-2    ActionScript
    verifyValue    id=tags    ActionScript
