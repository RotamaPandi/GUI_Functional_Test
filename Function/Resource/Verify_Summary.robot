*** Settings ***
Documentation     Action Function
Library           SeleniumLibrary
Library           String
Library           OperatingSystem
Resource          ../../../Resource/Base.robot
Resource          ../../../Resource/Action.robot

*** Keywords ***
Verify ASN Summary TC_LCL_Loose_NT
    Sleep   ${delay}
    Page Should Contain   ASN Summary
    Wait Until Page Contains Element   //div[contains(text(),'ASN')]
    Wait Until Page Contains Element   //div[contains(text(),'Grip Batam')]
    Wait Until Page Contains Element   //div[contains(text(),'LCL')]
    Wait Until Page Contains Element   //div[contains(text(),'Loose')]
    Wait Until Element Contains   css=td[data-colindex='2']
    ...   212-WiroSableng
    Wait Until Element Contains   css=td[data-colindex='3']
    ...   Figure Hero Indonesia
    Wait Until Element Contains   css=td[data-colindex='4']
    ...   Normal Stocks
    Wait Until Element Contains   css=td[data-colindex='6']
    ...   Box
    Wait Until Element Contains   css=td[data-colindex='7']
    ...   3
    Click Element   //span[contains(text(),'Close Summary')]
    Sleep   ${delay}

Verify ASN Summary TC_LCL_Loose_SC
    Sleep    ${delay}
    Page Should Contain     ASN Summary
    Wait Until Page Contains Element    //div[contains(text(),'ASN')]
    Wait Until Page Contains Element    //div[contains(text(),'Grip Batam')]
    Wait Until Page Contains Element    //div[contains(text(),'LCL')]
    Wait Until Page Contains Element    //div[contains(text(),'Loose')]
    Wait Until Page Contains Element    //div[contains(text(),'Self Collection')]
    Wait Until Element Contains     css=td[data-colindex='2']
    ...     212-WiroSableng
    Wait Until Element Contains     css=td[data-colindex='3']
    ...     Figure Hero Indonesia
    Wait Until Element Contains     css=td[data-colindex='4']
    ...     Normal Stocks
    Wait Until Element Contains     css=td[data-colindex='6']
    ...     Box
    Wait Until Element Contains     css=td[data-colindex='7']
    ...     3
    Click Element   //span[contains(text(),'Close Summary')]
    Sleep    ${delay}

Verify ASN Summary TC_LCL_Loose_RD
    Sleep   ${delay}
    Page Should Contain      ASN Summary
    Wait Until Page Contains Element    //div[contains(text(),'ASN')]
    Wait Until Page Contains Element    //div[contains(text(),'Grip Batam')]
    Wait Until Page Contains Element    //div[contains(text(),'LCL')]
    Wait Until Page Contains Element    //div[contains(text(),'Loose')]
    Wait Until Page Contains Element    //div[contains(text(),'Request Delivery')]
    Wait Until Page Contains Element    //div[contains(text(),'137 Market St Singapore 048943')]
    Wait Until Element Contains     css=td[data-colindex='2']
    ...     212-WiroSableng
    Wait Until Element Contains     css=td[data-colindex='3']
    ...     Figure Hero Indonesia
    Wait Until Element Contains     css=td[data-colindex='4']
    ...     Normal Stocks
    Wait Until Element Contains     css=td[data-colindex='6']
    ...     Box
    Wait Until Element Contains     css=td[data-colindex='7']
    ...     3
    Click Element     //span[contains(text(),'Close Summary')]
    Sleep   ${delay}

Verify ASN Summary TC_LCL_Palletized_NT
    Sleep     ${delay}
    Page Should Contain     ASN Summary
    Wait Until Page Contains Element    //div[contains(text(),'ASN')]
    Wait Until Page Contains Element    //div[contains(text(),'Grip Batam')]
    Wait Until Page Contains Element    //div[contains(text(),'LCL')]
    Wait Until Page Contains Element    //div[contains(text(),'Palletized')]
    Wait Until Element Contains     css=td[data-colindex='2']
    ...     212-WiroSableng
    Wait Until Element Contains     css=td[data-colindex='3']
    ...     Figure Hero Indonesia
    Wait Until Element Contains     css=td[data-colindex='4']
    ...     Normal Stocks
    Wait Until Element Contains     css=td[data-colindex='6']
    ...     Box
    Wait Until Element Contains     css=td[data-colindex='7']
    ...     3
    Click Element   //span[contains(text(),'Close Summary')]
    Sleep   ${delay}

Verify ASN Summary TC_LCL_Palletized_SC
    Sleep    ${delay}
    Page Should Contain     ASN Summary
    Wait Until Page Contains Element    //div[contains(text(),'ASN')]
    Wait Until Page Contains Element    //div[contains(text(),'Grip Batam')]
    Wait Until Page Contains Element    //div[contains(text(),'LCL')]
    Wait Until Page Contains Element    //div[contains(text(),'Palletized')]
    Wait Until Page Contains Element    //div[contains(text(),'Self Collection')]
    Wait Until Element Contains     css=td[data-colindex='2']
    ...    212-WiroSableng
    Wait Until Element Contains     css=td[data-colindex='3']
    ...   Figure Hero Indonesia
    Wait Until Element Contains     css=td[data-colindex='4']
    ...   Normal Stocks
    Wait Until Element Contains     css=td[data-colindex='6']
    ...   Box
    Wait Until Element Contains     css=td[data-colindex='7']
    ...   3
    Click Element   //span[contains(text(),'Close Summary')]
    Sleep    ${delay}

Verify ASN Summary TC_LCL_Palletized_RD
    Sleep    ${delay}
    Page Should Contain     ASN Summary
    Wait Until Page Contains Element    //div[contains(text(),'ASN')]
    Wait Until Page Contains Element    //div[contains(text(),'Grip Batam')]
    Wait Until Page Contains Element    //div[contains(text(),'LCL')]
    Wait Until Page Contains Element    //div[contains(text(),'Palletized')]
    Wait Until Page Contains Element    //div[contains(text(),'Request Delivery')]
    Wait Until Page Contains Element    //div[contains(text(),'137 Market St Singapore 048943')]
    Wait Until Element Contains     css=td[data-colindex='2']
    ...    212-WiroSableng
    Wait Until Element Contains     css=td[data-colindex='3']
    ...   Figure Hero Indonesia
    Wait Until Element Contains     css=td[data-colindex='4']
    ...   Normal Stocks
    Wait Until Element Contains     css=td[data-colindex='6']
    ...   Box
    Wait Until Element Contains     css=td[data-colindex='7']
    ...   3
    Click Element   //span[contains(text(),'Close Summary')]
    Sleep    ${delay}

Verify ASN Summary TC_FCL_20ftLoose_NT
    Sleep   ${delay}
    Page Should Contain   ASN Summary
    Wait Until Page Contains Element   //div[contains(text(),'ASN')]
    Wait Until Page Contains Element   //div[contains(text(),'Grip Batam')]
    Wait Until Page Contains Element   //div[contains(text(),'FCL')]
    Wait Until Page Contains Element   //div[contains(text(),'20ft Loose')]
    Wait Until Element Contains   css=td[data-colindex='2']
    ...   212-WiroSableng
    Wait Until Element Contains   css=td[data-colindex='3']
    ...   Figure Hero Indonesia
    Wait Until Element Contains   css=td[data-colindex='4']
    ...   Normal Stocks
    Wait Until Element Contains   css=td[data-colindex='6']
    ...   Box
    Wait Until Element Contains   css=td[data-colindex='7']
    ...   3
    Click Element   //span[contains(text(),'Close Summary')]
    Sleep   ${delay}

Verify ASN Summary TC_FCL_40Palletized_SC
    Sleep                                   ${delay}
    Page Should Contain                     ASN Summary
    Wait Until Page Contains Element        //div[contains(text(),'ASN')]
    Wait Until Page Contains Element        //div[contains(text(),'Grip Batam')]
    Wait Until Page Contains Element        //div[contains(text(),'FCL')]
    Wait Until Page Contains Element        //div[contains(text(),'40ft Palletized')]
    Wait Until Element Contains             css=td[data-colindex='2']
    ...                                     212-WiroSableng
    Wait Until Element Contains             css=td[data-colindex='3']
    ...                                     Figure Hero Indonesia
    Wait Until Element Contains             css=td[data-colindex='4']
    ...                                     Normal Stocks
    Wait Until Element Contains             css=td[data-colindex='7']
    ...                                     3
    Click Element                           //span[contains(text(),'Close Summary')]
    Sleep                                   ${delay}

Verify ASN Summary TC_FCL_20tf_HighCubePalletize_RD
    Sleep   ${delay}
    Page Should Contain      ASN Summary
    Wait Until Page Contains Element    //div[contains(text(),'ASN')]
    Wait Until Page Contains Element    //div[contains(text(),'Grip Batam')]
    Wait Until Page Contains Element    //div[contains(text(),'FCL')]
    Wait Until Page Contains Element    //div[contains(text(),'20ft high cube palletize')]
    Wait Until Page Contains Element    //div[contains(text(),'Request Delivery')]
    Wait Until Page Contains Element    //div[contains(text(),'137 Market St Singapore 048943')]
    Wait Until Element Contains     css=td[data-colindex='2']
    ...     212-WiroSableng
    Wait Until Element Contains     css=td[data-colindex='3']
    ...     Figure Hero Indonesia
    Wait Until Element Contains     css=td[data-colindex='4']
    ...     Normal Stocks
    Wait Until Element Contains     css=td[data-colindex='6']
    ...     Box
    Wait Until Element Contains     css=td[data-colindex='7']
    ...     3
    Click Element     //span[contains(text(),'Close Summary')]
    Sleep   ${delay}

Verify GRN Summary Select Manifest
    Sleep    ${delay}
    Page Should Contain     GRN Summary
    Wait Until Page Contains Element    //div[contains(text(),'GRN')]
    Wait Until Page Contains Element    //div[contains(text(),'Grip Batam')]
    Wait Until Element Contains     css=td[data-colindex='2']
    ...    212-WiroSableng
    Wait Until Element Contains     css=td[data-colindex='3']
    ...   Figure Hero Indonesia
    Wait Until Element Contains     css=td[data-colindex='4']
    ...   Normal Stocks
    Wait Until Element Contains     css=td[data-colindex='6']
    ...   Box
    Wait Until Element Contains     css=td[data-colindex='7']
    ...   3
    Click Element   //span[contains(text(),'Close Summary')]
    Sleep    ${delay}