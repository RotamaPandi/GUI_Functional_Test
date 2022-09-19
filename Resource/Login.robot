*** Settings ***
Documentation     Action Function
Library           SeleniumLibrary
Resource          Base.robot
Resource          Action.robot

*** Keywords ***
Login
    Open Browser   ${url}   ${browser}
    Maximize Browser Window
    Sleep   ${delay}
    Login Validation   tama 
    #Login Validation   pandi    //for API Testing
    ...    123456
    #...   nMt8zGP?
    Sleep   ${delay}
    Wait Until Page Contains Element   css=div[name='ButtonSendViaSMS']
    ...   timeout=30
    Click Element   css=div[name='ButtonSendViaSMS']
    Wait Until Page Contains Element   css=input[name='verificationCode']
    ...   timeout=30
    Input Text   css=input[name='verificationCode']                                  
    ...   123456
    Click Element   //span[contains(text(),'Verify')]
    Sleep   ${delay}