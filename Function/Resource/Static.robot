*** Settings ***
Documentation     Action Function
Library           SeleniumLibrary
Library           String
Library           OperatingSystem
Resource          ../../../Resource/Base.robot
Resource          ../../../Resource/Action.robot

*** Keywords ***    
Go to Inbound Page
    Wait Until Element Is Visible   //span[contains(text(),'Inbound')]
    ...   timeout=10
    Click Element   //span[contains(text(),'Inbound')]
    Wait Until Element Is Visible   //span[contains(text(),'Inbound List')]
    Click Element   //span[contains(text(),'Inbound List')]
    Wait Until Element Is Visible   css=button[name='New Inbound']
    ...   timeout=10

Go to New Inbound Button and Choose "Create ASN Manually"
    Click Element   css=button[name='New Inbound']
    Wait Until Page Contains Element   //body/div[@id='simple-popover']/div[3]
    Sleep   ${delay}
    Click Element   //span[contains(text(),'Create ASN Manually')]

Go to New Inbound Button and Choose "Create GRN Manually"
    Click Element   css=button[name='New Inbound']
    Wait Until Page Contains Element   //body/div[@id='simple-popover']/div[3]
    Sleep   ${delay}
    Click Element   //span[contains(text(),'Create GRN Manually')]

Click "Next Step" to Product tab
    Scroll Element Into View    css=button[name='submitASN']
    Wait Until Element Is Visible   css=button[name='submitASN']
    ...   timeout=30
    Click Element   css=button[name='submitASN']
    Sleep   ${delay}

Click Save Changes
    Wait Until Element Is Visible   css=button[name='saveGRN']
    ...   timeout=30
    Click Element   css=button[name='saveGRN']
    Sleep   ${delay}

Click Create GRN Button
    Wait Until Element Is Visible   css=button[name='closeGRN']
    Wait Until Element Is Visible   css=button[name='saveGRN']
    ...   timeout=20
    Click Element   css=button[name='saveGRN']
    Wait until Page Contains Element   //div[contains(text(),'Data Successfully Added')]
    ...   timeout=20

Click "Next Step" to Rework tab
    Scroll Element Into View    css=button[name='nextStep']
    Wait Until Page Contains Element    css=button[name='nextStep']
    ...    timeout=20
    CliCk Element   css=button[name='nextStep']
    Sleep   ${delay}

Click Create ASN Button
    Wait Until Element Is Visible   css=button[name='closeASN']
    Wait Until Element Is Visible   css=button[name='createASN']
    ...     timeout=20
    Click Element   css=button[name='createASN']
    Wait until Page Contains Element   //div[contains(text(),'Data Successfully Added')]
    ...   timeout=20

Go to ASN Job With View Inbound Job
    Wait Until Page Contains Element    //tr[1]/td[12]//button[@name='cancelJob']
    Wait Until Page Contains Element    //tr[1]/td[12]//button[@name='viewInboundASN']
    ...    timeout=20
    Click Element   //tr[1]/td[12]//button[@name='viewInboundASN']
    Sleep   ${delay}

Go to GRN Job With View Inbound Job
    Wait Until Page Contains Element        css=button[name='GRN']
    ...    timeout=20
    Click Element                           css=button[name='GRN']
    Wait Until Page Contains Element        //tr[1]/td[11]//button[@name='cancelGRN']
    Wait Until Page Contains Element        //tr[1]/td[11]//button[@name='viewGRN']
    ...    timeout=20
    Click Element                           //tr[1]/td[11]//button[@name='viewGRN']
    Sleep                                   ${delay}

Close Button of View ASN
    Click Element       css=button[name='closeASN']
    Sleep   ${delay}
    [Teardown]        Close Browser

Close Button of View GRN
    Click Element       css=button[name='closeGRN']
    Sleep   ${delay}
    [Teardown]        Close Browser