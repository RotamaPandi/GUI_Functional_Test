*** Settings ***
Documentation     Action Function
Library           SeleniumLibrary
Library           String
Library           OperatingSystem
Resource          ../../../Resource/Base.robot
Resource          ../../../Resource/Action.robot

*** Keywords ***
Create Instruction and Checking the list of 212-WiroSableng
    Wait Until Page Contains Element   css=div[label='Instruction']
    ...    timeout=30
    Page Should Contain    Instruction
    Input Text    css=div[label='Instruction'] > textarea[placeholder='Instruction']
    ...   Need double cover
    Wait Until Element Contains   css=td[data-colindex="2"]
    ...   212-WiroSableng
    Wait Until Element Contains   css=td[data-colindex="3"]
    ...   Figure Hero Indonesia
    Wait Until Element Contains   css=td[data-colindex="4"]
    ...   3
    Wait Until Element Contains   css=td[data-colindex="5"]
    ...   Box