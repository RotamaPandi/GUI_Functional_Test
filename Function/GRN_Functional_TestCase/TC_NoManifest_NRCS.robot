*** Settings ***
Documentation     This is normal testing Scenario of Creating GRN Manually with No Manifest without Require Collection Service
Library           SeleniumLibrary
Resource          ../../../Resource/Login.robot
Resource          ../Resource/Static.robot
Resource          ../Resource/Details.robot
Resource          ../Resource/Product.robot
Resource          ../Resource/Rework.robot
Resource          ../Resource/Verify_Summary.robot
Resource          ../Resource/View.robot

*** Keywords ***
TC_NoManifest_NRCS
    Login
    Go to Inbound Page
    Go to New Inbound Button and Choose "Create GRN Manually"
    Choose Client
    Input Reference ID
    Choose Product Type No Manifest
    GRN_Input Number Of Pallet
    GRN_Input Number Of Carton
    Input Remarks With text "Do not Slam"
    Click Save Changes
    Go to GRN Job With View Inbound Job
    View GRN Details (No Manifest)
    View Product (No Manifest)
    View Rework (No Manifest)
    Close Button of View GRN