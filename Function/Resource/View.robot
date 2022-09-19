*** Settings ***
Documentation     Action Function
Library           SeleniumLibrary
Library           String
Library           OperatingSystem
Resource          ../../../Resource/Base.robot
Resource          ../../../Resource/Action.robot

*** Keywords ***
View ASN Details (LCL/Loose/No Transit)
    Page Should Contain    View ASN
    Scroll Element Into View    //span[contains(text(),'Edit Inbound')]
    Wait Until Element Is Visible   //span[contains(text(),'Edit Inbound')]
    Wait Until Element Contains    //div[contains(text(),'Waiting Shipment')]
    ...   Waiting Shipment
    Wait Until Page Contains Element   //div[contains(text(),'Grip Batam (QAGrip)')]
    Element Text Should Be   css=div[id='mui-component-select-shipmentType']
    ...    LCL
    Element Text Should Be    css=div[id='mui-component-select-containerSize']
    ...    Loose
    Wait Until Page Contains Element   css=input[name='numberpallet']
    ...     11
    Wait Until Page Contains Element    css=div[id='mui-component-select-loadingbay']
    ...     21
    Wait Until Page Contains Element    //textarea[contains(text(),'Do not slam')]
    Sleep   ${delay}

View ASN Details (LCL/Loose/Self Collection)
    Page Should Contain     View ASN
    Scroll Element Into View    //span[contains(text(),'Edit Inbound')]
    Wait Until Element Is Visible       //span[contains(text(),'Edit Inbound')]
    Wait Until Element Contains     //div[contains(text(),'Waiting Shipment')]
    ...     Waiting Shipment
    Wait Until Page Contains Element    //div[contains(text(),'Grip Batam (QAGrip)')]
    Element Text Should Be      css=[id='mui-component-select-shipmentType']
    ...     LCL
    Element Text Should Be      css=[id='mui-component-select-containerSize']
    ...     Loose
    Wait Until Page Contains Element    css=input[name='numberpallet']
    ...     11
    Element Text Should Be      css=div[id='mui-component-select-loadingbay']
    ...     22
    Wait Until Element Contains     css=div[id='mui-component-select-deliveryOption']
    ...     Self Collection
    Wait Until Page Contains Element    css=input[name='totalCarton']
    ...     22
    Wait Until Page Contains Element    css=input[name='totalPallet']
    ...     33
    Wait Until Page Contains Element    //textarea[contains(text(),'Do not slam')]
    Sleep   ${delay}

View ASN Details (LCL/Loose/Request Delivary)
    Page Should Contain     View ASN
    Scroll Element Into View    //span[contains(text(),'Edit Inbound')]
    Wait Until Element Is Visible       //span[contains(text(),'Edit Inbound')]
    Wait Until Element Contains     //div[contains(text(),'Waiting Shipment')]
    ...     Waiting Shipment
    Wait Until Page Contains Element    //div[contains(text(),'Grip Batam (QAGrip)')]
    Element Text Should Be      css=[id='mui-component-select-shipmentType']
    ...     LCL
    Element Text Should Be      css=[id='mui-component-select-containerSize']
    ...     Loose
    Wait Until Page Contains Element    css=input[name='numberpallet']
    ...     11
    Wait Until Page Contains Element    css=div[id='mui-component-select-loadingbay']
    ...     28  
    Wait Until Element Contains     css=div[id='mui-component-select-deliveryOption']
    ...     Request Delivery
    Wait Until Page Contains Element    css=input[name='totalCarton']
    ...     22
    Wait Until Page Contains Element    css=input[name='totalPallet']
    ...     33
    
    #${for_value}=      Get Element Attribute       css=input[name='clientAddress']
    #...    for
    #Log To Console     ${for_value}

    Textfield Value Should Be   css=input[name='clientAddress']
    ...     Tembesi
    Textfield Value Should Be   css=input[name='contactPerson']
    ...     Grove
    Element Text Should Be      css=div[id='mui-component-select-phoneCode']
    ...     Singapore (65)
    Textfield Value Should Be   css=input[name='contactNumber']
    ...     8128111212
    Element Text Should Be      css=div[id='mui-component-select-country']
    ...     Singapore
    Textfield Value Should Be   css=input[name='state']
    ...     state
    Textfield Value Should Be   css=input[name='city']
    ...     City
    Textfield Value Should Be   css=input[name='zipCode']
    ...     29433
    Wait Until Page Contains Element    //textarea[contains(text(),'137 Market St Singapore 048943')]
    Wait Until Page Contains Element    //textarea[contains(text(),'Do not slam')]
    Sleep   ${delay}

View ASN Details (LCL/Palletized/No Transit)
    Page Should Contain    View ASN
    Scroll Element Into View    //span[contains(text(),'Edit Inbound')]
    Wait Until Element Is Visible   //span[contains(text(),'Edit Inbound')]
    Wait Until Element Contains    //div[contains(text(),'Waiting Shipment')]
    ...   Waiting Shipment
    Wait Until Page Contains Element   //div[contains(text(),'Grip Batam (QAGrip)')]
    Element Text Should Be   css=div[id='mui-component-select-shipmentType']
    ...   LCL
    Element Text Should Be    css=div[id='mui-component-select-containerSize']
    ...    Palletized
    Wait Until Page Contains Element   css=input[name='numberpallet']
    ...     20
    Wait Until Page Contains Element    css=div[id='mui-component-select-loadingbay']
    ...     21
    Wait Until Page Contains Element    //textarea[contains(text(),'Do not slam')]
    Sleep   ${delay}

View ASN Details (LCL/Palletized/Self Collection)
    Page Should Contain     View ASN
    Scroll Element Into View    //span[contains(text(),'Edit Inbound')]
    Wait Until Element Is Visible   //span[contains(text(),'Edit Inbound')]
    Wait Until Element Contains     //div[contains(text(),'Waiting Shipment')]
    ...     Waiting Shipment
    Wait Until Page Contains Element    //div[contains(text(),'Grip Batam (QAGrip)')]
    Element Text Should Be      css=[id='mui-component-select-shipmentType']
    ...     LCL
    Element Text Should Be      css=[id='mui-component-select-containerSize']
    ...     Palletized
    Wait Until Page Contains Element    css=input[name='numberpallet']
    ...     30
    Element Text Should Be      css=div[id='mui-component-select-loadingbay']
    ...     31
    Wait Until Element Contains     css=div[id='mui-component-select-deliveryOption']
    ...     Self Collection
    Wait Until Page Contains Element    //textarea[contains(text(),'Do not slam')]
    Sleep   ${delay}

View ASN Details (LCL/Palletized/Request Delivary)
    Page Should Contain     View ASN
    Scroll Element Into View    //span[contains(text(),'Edit Inbound')]
    Wait Until Element Is Visible   //span[contains(text(),'Edit Inbound')]
    Wait Until Element Contains     //div[contains(text(),'Waiting Shipment')]
    ...     Waiting Shipment
    Wait Until Page Contains Element    //div[contains(text(),'Grip Batam (QAGrip)')]
    Element Text Should Be      css=[id='mui-component-select-shipmentType']
    ...     LCL
    Element Text Should Be      css=[id='mui-component-select-containerSize']
    ...     Palletized
    Wait Until Page Contains Element    css=input[name='numberpallet']
    ...     20
    Wait Until Page Contains Element    css=div[id='mui-component-select-loadingbay']
    ...     32
    Wait Until Element Contains     css=div[id='mui-component-select-deliveryOption']
    ...     Request Delivery
    Wait Until Page Contains Element    css=input[name='totalCarton']
    ...     22
    Wait Until Page Contains Element    css=input[name='totalPallet']
    ...     33
    
    #${for_value}=      Get Element Attribute       css=input[name='clientAddress']
    #...    for
    #Log To Console     ${for_value}

    Textfield Value Should Be       css=input[name='clientAddress']
    ...     Tembesi
    Textfield Value Should Be       css=input[name='contactPerson']
    ...     Grove
    Element Text Should Be      css=div[id='mui-component-select-phoneCode']
    ...     Singapore (65)
    Textfield Value Should Be   css=input[name='contactNumber']
    ...     8128111212
    Element Text Should Be      css=div[id='mui-component-select-country']
    ...     Singapore
    Textfield Value Should Be       css=input[name='state']
    ...     state
    Textfield Value Should Be       css=input[name='city']
    ...     City
    Textfield Value Should Be   css=input[name='zipCode']
    ...     29433
    Wait Until Page Contains Element    //textarea[contains(text(),'137 Market St Singapore 048943')]
    Wait Until Page Contains Element    //textarea[contains(text(),'Do not slam')]
    Sleep       ${delay}

View ASN Details (FCL/20ftLoose/No Has Transit)
    Page Should Contain     View ASN
    Scroll Element Into View    //span[contains(text(),'Edit Inbound')]
    Wait Until Element Is Visible      //span[contains(text(),'Edit Inbound')]
    Wait Until Element Contains     //div[contains(text(),'Waiting Shipment')]
    ...     Waiting Shipment
    Wait Until Page Contains Element    //div[contains(text(),'Grip Batam (QAGrip)')]
    Element Text Should Be      css=div[id='mui-component-select-shipmentType']
    ...     FCL    
    Wait Until Page Contains Element    css=input[name='containernumber']
    ...     111
    Element Text Should Be      css=div[id='mui-component-select-containerSize']
    ...     20ft Loose
    Wait Until Page Contains Element    css=div[id='mui-component-select-loadingbay']
    ...     30
    Wait Until Page Contains Element    //textarea[contains(text(),'Do not slam')]
    Sleep   ${delay}

View ASN Details (FCL/40ft_Palletized/Self Collection)
    Page Should Contain     View ASN
    Scroll Element Into View    //span[contains(text(),'Edit Inbound')]
    Wait Until Element Is Visible      //span[contains(text(),'Edit Inbound')]
    Wait Until Element Contains     //div[contains(text(),'Waiting Shipment')]
    ...     Waiting Shipment    
    Wait Until Element Contains     css=div[id='mui-component-select-deliveryOption']
    ...     Self Collection
    Wait Until Page Contains Element    //div[contains(text(),'Grip Batam (QAGrip)')]
    Element Text Should Be      css=div[id='mui-component-select-shipmentType']
    ...     FCL
    Element Text Should Be      css=div[id='mui-component-select-containerSize']
    ...     40ft Palletized
    Wait Until Page Contains Element    css=input[name='containernumber']
    ...     111
    Wait Until Page Contains Element    css=div[id='mui-component-select-loadingbay']
    ...     31
    Wait Until Element Contains     css=div[id='mui-component-select-deliveryOption']
    ...     Self Collection
    Wait Until Page Contains Element    //textarea[contains(text(),'Do not slam')]
    Sleep   ${delay}

View ASN Details (FCL/20tf_HighCubePalletize/Request Delivary)
    Page Should Contain     View ASN
    Scroll Element Into View    //span[contains(text(),'Edit Inbound')]
    Wait Until Element Is Visible   //span[contains(text(),'Edit Inbound')]
    Wait Until Element Contains         //div[contains(text(),'Waiting Shipment')]
    ...     Waiting Shipment
    Wait Until Page Contains Element    //div[contains(text(),'Grip Batam (QAGrip)')]
    Element Text Should Be      css=[id='mui-component-select-shipmentType']
    ...     FCL
    Element Text Should Be      css=[id='mui-component-select-containerSize']
    ...     20ft high cube palletize
    Wait Until Page Contains Element    css=input[name='containernumber']
    ...     111
    Wait Until Page Contains Element    css=div[id='mui-component-select-loadingbay']
    ...     34  
    Wait Until Element Contains     css=div[id='mui-component-select-deliveryOption']
    ...     Request Delivery
    Wait Until Page Contains Element    css=input[name='totalCarton']
    ...     22
    Wait Until Page Contains Element    css=input[name='totalPallet']
    ...     33
    
    #${for_value}=      Get Element Attribute       css=input[name='clientAddress']
    #...    for
    #Log To Console     ${for_value}

    Textfield Value Should Be   css=input[name='clientAddress']
    ...     Tembesi
    Textfield Value Should Be   css=input[name='contactPerson']
    ...     Grove
    Element Text Should Be  css=div[id='mui-component-select-phoneCode']
    ...     Singapore (65)
    Textfield Value Should Be   css=input[name='contactNumber']
    ...     8128111212
    Element Text Should Be      css=div[id='mui-component-select-country']
    ...     Singapore
    Textfield Value Should Be       css=input[name='state']
    ...     state
    Textfield Value Should Be   css=input[name='city']
    ...     City
    Textfield Value Should Be   css=input[name='zipCode']
    ...     29433
    Wait Until Page Contains Element    //textarea[contains(text(),'137 Market St Singapore 048943')]
    Wait Until Page Contains Element    //textarea[contains(text(),'Do not slam')]
    Sleep   ${delay}

View GRN Details (No Manifest)
    Page Should Contain     View GRN
    Scroll Element Into View    //span[contains(text(),'Edit Inbound')]
    Wait Until Element Is Visible       css=button[name='editInbound']
    Wait Until Element Contains     //div[contains(text(),'Waiting Shipment')]
    ...     Waiting Shipment
    Textfield Value Should Be     css=input[name='client']
    ...    Grip Batam
    Wait Until Element Contains    css=div[id='mui-component-select-addProductType']
    ...    No Manifest
    Wait Until Page Contains Element    css=input[name='noOfPallet']
    ...     44
    Wait Until Page Contains Element    css=input[name='noOfPallet']
    ...     55
    Wait Until Page Contains Element    //textarea[contains(text(),'Do not slam')]
    Sleep       ${delay}

View GRN Details (Select Manifest)
    Page Should Contain     View GRN
    Scroll Element Into View    //span[contains(text(),'Edit Inbound')]
    Wait Until Element Is Visible       css=button[name='editInbound']
    Wait Until Element Contains     //div[contains(text(),'Waiting Shipment')]
    ...     Waiting Shipment
    Textfield Value Should Be     css=input[name='client']
    ...    Grip Batam
    Wait Until Element Contains    css=div[id='mui-component-select-addProductType']
    ...    Select Manifest
    Wait Until Page Contains Element    //textarea[contains(text(),'Do not slam')]
    Sleep       ${delay}

View Product of 212-WiroSableng Item Code
    CliCk Element   css=button[id='simple-tab-1']
    Wait Until Element Contains   css=td[data-testid="MuiDataTableBodyCell-3-0"]
    ...    212-WiroSableng
    Wait Until Element Contains   css=td[data-testid="MuiDataTableBodyCell-4-0"]
    ...    Figure Hero Indonesia
    Wait Until Element Contains   css=td[data-testid="MuiDataTableBodyCell-5-0"]
    ...    Normal Stocks
    Wait Until Element Contains   css=td[data-testid="MuiDataTableBodyCell-7-0"]
    ...    Box
    Wait Until Element Contains   css=td[data-testid="MuiDataTableBodyCell-8-0"]
    ...    3
    Wait Until Element Contains   css=td[data-testid="MuiDataTableBodyCell-16-0"]
    ...   Pending
    Sleep   ${delay}

View Product (No Manifest)
    CliCk Element   css=button[id='simple-tab-1']
    Wait Until Element Contains     //div[contains(text(),'No Item has been Processed yet')]
    ...     No Item has been Processed yet

View Rework of 212-WiroSableng Item Code
    Click Element       css=button[id='simple-tab-3']
    Wait Until Element Contains     css=td[data-testid="MuiDataTableBodyCell-2-0"]
    ...     212-WiroSableng
    Wait Until Element Contains     css=td[data-testid="MuiDataTableBodyCell-3-0"]
    ...     Figure Hero Indonesia
    Wait Until Element Contains     css=td[data-testid="MuiDataTableBodyCell-4-0"]
    ...     3 
    Wait Until Element Contains     css=td[data-testid="MuiDataTableBodyCell-5-0"]
    ...     Box

View Rework (No Manifest)
    Click Element    css=button[id='simple-tab-3']
    Wait Until Element Contains     //div[contains(text(),'Sorry, no matching records found')]
    ...     Sorry, no matching records found