*** Settings ***
Documentation     Base Function
Library           SeleniumLibrary

*** Variables ***
${url}                      https://sandbox.sailapp.studio/login
${url_ResetPassword}        https://sandbox.sailapp.studio/reset-password/tama
${browser}                  chrome
${username}                 ${EMPTY}
${password}                 ${EMPTY}
${delay}                    3
${UploadFiletest}           css=[type='file']
${jpgFile}                  ${CURDIR}/UploadFile/PackingList.jpg
${pngFile}                  ${CURDIR}/UploadFile/Wiro_Sableng.png
${LOWER}                    qwertyuiopasdfghjklzxcvbnm
${UPPER}                    QWERTYUIOPASDFGHJKLZXCVBNM
${LETTERS}                  ${LOWER}${UPPER}
${NUMBERS}                  1234567890
${Grip}                     Grip-