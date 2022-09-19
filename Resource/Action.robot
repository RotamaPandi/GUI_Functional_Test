*** Settings ***
Documentation     Action Function
Library           SeleniumLibrary
Library    String
Library    Collections
Resource          Base.robot

*** Keywords ***
Login Validation
    [Arguments]        ${username}    ${password}
    Input username     ${username}
    Input password     ${password}
    Click Login

Click Login
    Click element       css=button[type='submit']

Input Username
    [Arguments]         ${username}
    input text          css=input[name='email']    ${username}

Input password
    [Arguments]         ${password}
    input text          css=input[name='password']    ${password}

String Length Should Be And It Should Consist Of
    [Arguments]    ${string}    ${length}    ${allowed chars}
    Length Should Be    ${string}    ${length}
    FOR    ${i}    IN RANGE    0    ${length}
        Should Contain    ${allowed chars}    ${string[${i}]}
        ...    String '${string}' contains character '${string[${i}]}' which is not in allowed characters '${allowed chars}'.
    END

Upload File .jpg File
    [Documentation]     This Action is for make the .jpg categories file that want to uploaded.
    Wait Until Page Contains Element   ${UploadFiletest}   60s
    Choose File         ${UploadFiletest}     ${jpgFile}
    Wait Until Element Is Visible           css=img[alt='PackingList.jpg, 11kB']
    ...                                     timeout=30

Upload File .png File
    [Documentation]     This Action is for make the .png categories file that want to uploaded.
    Wait Until Page Contains Element   ${UploadFiletest}   60s
    Choose File         ${UploadFiletest}     ${pngFile}
    Wait Until Element Is Visible           css=img[alt='Wiro_Sableng.png, 35kB']
    ...                                     timeout=30