*** Settings ***
Documentation     This is normal testing Scenario of Creating GRN Manually with Select Manifest without Require Collection Service
Library           SeleniumLibrary
Resource          ../../../Resource/Login.robot
Resource          ../Resource/Static.robot
Resource          ../Resource/Details.robot
Resource          ../Resource/Product.robot
Resource          ../Resource/Rework.robot
Resource          ../Resource/Verify_Summary.robot
Resource          ../Resource/View.robot

*** Keywords ***
TC_SelectManifest_NRCS
    Login
    Go to Inbound Page
    Go to New Inbound Button and Choose "Create GRN Manually"
    Choose Client
    Input Reference ID
    Choose Product Type Select Manifest
    Input Remarks With text "Do not Slam"
    Click Save Changes
    Click Show All Product Button
    Input Quantity Product WiroSableng
    Click "Next Step" to Rework tab
    Create Instruction and Checking the list of 212-WiroSableng
    Click Create GRN Button
    Verify GRN Summary Select Manifest
    Go to GRN Job With View Inbound Job
    View GRN Details (Select Manifest)
    View Product of 212-WiroSableng Item Code
    View Rework of 212-WiroSableng Item Code
    Close Button of View GRN