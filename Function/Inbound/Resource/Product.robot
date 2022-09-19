*** Settings ***
Documentation     Action Function
Library           SeleniumLibrary
Library           String
Library           OperatingSystem
Resource          ../../../Resource/Base.robot
Resource          ../../../Resource/Action.robot

*** Keywords ***
Click Show All Product Button
    Page Should Contain   Product List
    #Scroll Element Into View    css=button[name='Product']
    Wait Until Page Contains Element   css=span[name='showAll']
    ...   timeout=20
    Click Element   css=span[name='showAll']
    Sleep   ${delay}

Input Quantity Product WiroSableng
    Wait Until Element Is Visible   css=td[data-testid='MuiDataTableBodyCell-2-0']
    Wait Until Element Is Visible   css=td[data-testid='MuiDataTableBodyCell-2-1']
    Input Text   css=input[name='6319ba8727487d791bd237d3']
    ...  3
    Click Element   css=span[name='6319ba8727487d791bd237d3']
    Wait Until Page Contains Element  //div[contains(text(),'Success')]
    ...  timeout=5
