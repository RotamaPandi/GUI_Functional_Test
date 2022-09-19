*** Settings ***
Documentation     Action Function
Library           SeleniumLibrary
Resource          ASN_Functional_TestCase/TC_LCL_Loose_NT.robot
Resource          ASN_Functional_TestCase/TC_LCL_Loose_SC.robot
Resource          ASN_Functional_TestCase/TC_LCL_Loose_RD.robot
Resource          ASN_Functional_TestCase/TC_LCL_Palletized_NT.robot
Resource          ASN_Functional_TestCase/TC_LCL_Palletized_SC.robot
Resource          ASN_Functional_TestCase/TC_LCL_Palletized_RD.robot
Resource          ASN_Functional_TestCase/TC_FCL_20ft_Loose_NT.robot
Resource          ASN_Functional_TestCase/TC_FCL_40ft_Palletized_SC.robot
Resource          ASN_Functional_TestCase/TC_FCL_20ft_HighCubePalletized_RD.robot
Resource          GRN_Functional_TestCase/TC_NoManifest_NRCS.robot
Resource          GRN_Functional_TestCase/TC_SelectManifest_NRCS.robot
Test Teardown     Close Browser

*** Test Cases ***
ASN_TC_1
    TC_LCL_Loose_NT

ASN_TC_2
    TC_LCL_Loose_SC

ASN_TC_3
    TC_LCL_Loose_RD

ASN_TC_4
    TC_LCL_Palletized_NT

ASN_TC_5
    TC_LCL_Palletized_SC

ASN_TC_6
    TC_LCL_Palletized_RD

ASN_TC_7
    FCL_20ft_Loose_NT

ASN_TC_8
    FCL_40ft_Palletized_SC

ASN_TC_9
    FCL_20ft_HighCubePalletized_RD

GRN_TC_10
    TC_NoManifest_NRCS

GRN_TC_11
    TC_SelectManifest_NRCS