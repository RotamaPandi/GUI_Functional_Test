*** Settings ***
Documentation     Action Function
Library           SeleniumLibrary
Resource          ../../../Resource/Login.robot
Resource          ../Resource/Static.robot
Resource          ../Resource/Details.robot
Resource          ../Resource/Product.robot
Resource          ../Resource/Rework.robot
Resource          ../Resource/Verify_Summary.robot
Resource          ../Resource/View.robot

*** Keywords ***
FCL_40ft_Palletized_SC
    [Documentation]        This is normal testing with no has transit test case that selecting (LCL/Loose/No has Transit)
    Login
    Go to Inbound Page
    Go to New Inbound Button and Choose "Create ASN Manually"
    Choose Client
    Input Reference ID
    Select Shipment Type For FCL
    Input Container Number
    Select Container Size 40ft Palletized
    Select Loading Bay 31
    Enable Has Transit Job
    Select Transit Delivery Option (Self Collection)
    Input Total Carton
    Input Total Pallet
    Input Remarks With text "Do not Slam"
    Click "Next Step" to Product tab
    Click Show All Product Button
    Input Quantity Product WiroSableng
    Click "Next Step" to Rework tab
    Create Instruction and Checking the list of 212-WiroSableng
    Click Create ASN Button
    Verify ASN Summary TC_FCL_40Palletized_SC
    Go to ASN Job With View Inbound Job
    View ASN Details (FCL/40ft_Palletized/Self Collection)
    View Product of 212-WiroSableng Item Code
    View Rework of 212-WiroSableng Item Code
    Close Button of View ASN