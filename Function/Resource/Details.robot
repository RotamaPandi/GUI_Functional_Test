*** Settings ***
Documentation     Action Function
Library           SeleniumLibrary
Library           String
Library           OperatingSystem
Resource          ../../../Resource/Base.robot
Resource          ../../../Resource/Action.robot

*** Keywords ***
Choose Client
    Wait Until Page Contains Element    //span[contains(text(),'Choose Client')]
    ...    timeout=30
    Page Should Contain   *Choose Client
    Click Element   //span[contains(text(),'Choose Client')]
    Wait Until Element Is Visible   css=div[role='dialog']
    ...   timeout=30
    Wait Until Page Contains Element   css=button[data-testid='Search-iconButton']
    Click Element   css=button[data-testid='Search-iconButton']
    Wait Until Page Contains Element   css=input[aria-label='Search']
    ...   timeout=30
    Input Text   css=input[aria-label='Search']
    ...   Grip
    Wait Until Page Contains Element   css=input[type='radio']
    Click Element   css=input[type='radio']
    Sleep   ${delay}
    Wait Until Page Contains Element   css=input[type='radio']
    Click Element   css=input[type='radio']
    Wait Until Page Contains Element   css=button[name='selectClient']
    Click Button   css=button[name='selectClient']
    Sleep   ${delay}

Input Reference ID
    #Creating Unique reference id
    ${Reference_ID} =         Generate Random String
    String Length Should Be And It Should Consist Of    ${Reference_ID}    8    ${LETTERS}${NUMBERS}
    Input Text   css=input[name='referanceid']
    ...   ${Reference_ID}
    Sleep  ${delay}


#this function is for Shipment Type ↓
Select Shipment Type For LCL
    Page Should Contain      *Shipment Type
    Click Element            css=div[id="mui-component-select-shipmentType"]
    Wait Until Page Contains Element    css=ul[role="listbox"]
    ...   timeout=20
    Click Element    css=li[data-value="1"]

Select Shipment Type For FCL
    Page Should Contain      *Shipment Type
    Click Element            css=div[id="mui-component-select-shipmentType"]
    Wait Until Page Contains Element    css=ul[role="listbox"]
    ...   timeout=20
    Click Element    css=li[data-value="2"]
#this function is for Shipment Type ↑


#this function is for Select Pallet Type ↓
Select Pallet Type Loose
    Page Should Contain    *Select Pallet Type
    Click Element    css=div[id="mui-component-select-containerSize"]
    Wait Until Page Contains Element    css=ul[role="listbox"]
    ...   timeout=20
    Click Element    css=li[data-value="1"]

Select Pallet Type Palletized
    Page Should Contain    *Select Pallet Type
    Click Element    css=div[id="mui-component-select-containerSize"]
    Wait Until Page Contains Element    css=ul[role="listbox"]
    ...   timeout=20
    Click Element    css=li[data-value="2"]
#this function is for Select Pallet Type↑


Input Number of Carton
    Page Should Contain    *Number of Carton
    Wait Until Page Contains Element   css=input[name='numberpallet']
    Input Text   css=input[name='numberpallet']
    ...   11

Input Number of Pallet
    Page Should Contain    *Number of Pallet
    Wait Until Page Contains Element   css=input[name='numberpallet']
    Input Text   css=input[name='numberpallet']
    ...   20

Input Container Number
    Page Should Contain    *Container Number
    Input Text    css=input[name="containernumber"]
    ...    111

#this function is for Choose Product Type ↓
Choose Product Type No Manifest
    Page Should Contain    *Choose Product Type
    Click Element    css=div[id='mui-component-select-addProductType']
    Wait Until Page Contains Element    css=ul[role='listbox']
    ...    timeout=20
    Click Element    css=li[data-value='2']

Choose Product Type Select Manifest
    Page Should Contain    *Choose Product Type
    Click Element    css=div[id='mui-component-select-addProductType']
    Wait Until Page Contains Element    css=ul[role='listbox']
    ...    timeout=20
    Click Element    css=li[data-value='1']
#this function is for Choose Product Type ↑

GRN_Input Number Of Pallet
    Page Should Contain    *Number Of Pallet
    Wait Until Page Contains Element        css=input[name='noOfPallet']
    ...    timeout=20
    Input Text                              css=input[name='noOfPallet']
    ...                                     44

GRN_Input Number Of Carton
    Page Should Contain    *Number Of Carton
    Wait Until Page Contains Element        css=input[name='cartonNumber']
    ...    timeout=20
    Input Text                              css=input[name='cartonNumber']
    ...                                     55

#Upload File
    #Wait Until Page Contains Element        css=input[type='file']
    #Upload File .png File
    #Sleep                                   ${delay}

Enable Has Transit Job
    Page Should Contain    Has Transit Job
    Click Element    css=input[name="transitJobSwitch"]

Input Total Carton
    Sleep   ${delay}
    Page Should Contain    *Total Carton
    Input Text        css=input[name="totalCarton"]
    ...   22


Input Total Pallet
    Sleep   ${delay}
    Page Should Contain    *Total Pallet
    Input Text    css=input[name="totalPallet"]
    ...    33

#this function is for Select Transit Delivery Option ↓
Select Transit Delivery Option (Self Collection)
    Page Should Contain    *Transit Delivery Option
    Click Element    css=div[id="mui-component-select-deliveryOption"]
    Wait Until Page Contains Element   css=ul[role='listbox']
    ...   timeout=20
    Click Element    css=li[data-value="1"]

Select Transit Delivery Option (Request Delivery)
    Page Should Contain    *Transit Delivery Option
    Click Element    css=div[id="mui-component-select-deliveryOption"]
    Wait Until Page Contains Element   css=ul[role='listbox']
    ...   timeout=20
    Click Element    css=li[data-value="2"]
#this function is for Select Transit Delivery Option ↑

Choose Address
    Page Should Contain    Address Name
    Page Should Contain    *Contact Person
    Page Should Contain    *Select Phone Code
    Page Should Contain    *Contact Number
    Page Should Contain    *Country
    Page Should Contain    *State / Province
    Page Should Contain    *City
    Page Should Contain    *Zip Code
    Page Should Contain    *Delivery Address
    #wait for developer to add the atribute name
    Click Element    //span[contains(text(),'Choose Address')]
    Wait Until Element Is Visible   css=div[role='dialog']
    ...   timeout=30
    Wait Until Page Contains Element    css=input[type='radio']
    Click Element   css=input[type='radio']
    Wait Until Page Contains Element   //span[contains(text(),'Select Address')]
    Wait Until Page Contains Element   //span[contains(text(),'Cancel')]
    Click Element   //span[contains(text(),'Select Address')]
    Sleep   ${delay}

#this function is for Select Container Size ↓
Select Container Size 20ft Loose
    Page Should Contain    *Select Container Size
    Click Element    css=div[id="mui-component-select-containerSize"]
    Wait Until Page Contains Element    css=ul[role="listbox"]
    ...   timeout=20
    Click Element    css=li[data-value="20ft Loose"]

Select Container Size 40ft Palletized
    Page Should Contain    *Select Container Size
    Click Element    css=div[id="mui-component-select-containerSize"]
    Wait Until Page Contains Element    css=ul[role="listbox"]
    ...   timeout=20
    Click Element    css=li[data-value="40ft Palletized"]

Select Container Size 20ft high cube palletize
    Page Should Contain    *Select Container Size
    Click Element    css=div[id="mui-component-select-containerSize"]
    Wait Until Page Contains Element    css=ul[role="listbox"]
    ...   timeout=20
    Click Element    css=li[data-value='20ft high cube palletize']
#this function is for Select Container Size ↑

#this function is for Select Select Loading Bay ↓
Select Loading Bay 21
    Scroll Element Into View    css=button[name='closeASN']
    Page Should Contain    *Select Loading Bay
    Click Element    css=div[id='mui-component-select-loadingbay']
    Wait Until Page Contains Element   css=ul[role='listbox']
    ...   timeout=20
    Click Element   css=li[data-value='21']
    Textfield Should Contain    css=input[name='loadingbay']    21

Select Loading Bay 22
    Scroll Element Into View    css=button[name='closeASN']
    Page Should Contain    *Select Loading Bay
    Click Element    css=div[id='mui-component-select-loadingbay']
    Wait Until Page Contains Element   css=ul[role='listbox']
    ...   timeout=20
    Click Element   css=li[data-value='22']
    Textfield Should Contain    css=input[name='loadingbay']    22

Select Loading Bay 28
    Scroll Element Into View    css=button[name='closeASN']
    Page Should Contain    *Select Loading Bay
    Click Element    css=div[id='mui-component-select-loadingbay']
    Wait Until Page Contains Element   css=ul[role='listbox']
    ...   timeout=20
    Click Element   css=li[data-value='28']
    Textfield Should Contain    css=input[name='loadingbay']    28

Select Loading Bay 30
    Scroll Element Into View    css=button[name='closeASN']
    Page Should Contain    *Select Loading Bay
    Click Element    css=div[id='mui-component-select-loadingbay']
    Wait Until Page Contains Element   css=ul[role='listbox']
    ...   timeout=20
    Click Element   css=li[data-value='30']
    Textfield Should Contain    css=input[name='loadingbay']    30

Select Loading Bay 31
    Scroll Element Into View    css=button[name='closeASN']
    Page Should Contain    *Select Loading Bay
    Click Element    css=div[id='mui-component-select-loadingbay']
    Wait Until Page Contains Element   css=ul[role='listbox']
    ...   timeout=20
    Click Element   css=li[data-value='31']
    Textfield Should Contain    css=input[name='loadingbay']    31

Select Loading Bay 32
    Page Should Contain    *Select Loading Bay
    Click Element    css=div[id='mui-component-select-loadingbay']
    Wait Until Page Contains Element   css=ul[role='listbox']
    ...   timeout=20
    Click Element   css=li[data-value='32']

Select Loading Bay 34
    Page Should Contain    *Select Loading Bay
    Click Element    css=div[id='mui-component-select-loadingbay']
    Wait Until Page Contains Element   css=ul[role='listbox']
    ...   timeout=20
    Click Element   css=li[data-value='34']
#this function is for Select Loading Bay ↑


#this function is for Remarks ↓
Input Remarks With text "Do not Slam"
    Wait Until Page Contains Element    css=textarea[placeholder='Description']
    Input Text    css=textarea[placeholder='Description']
    ...   Do not slam
    Sleep    ${delay}
#this function is for Remarks ↑