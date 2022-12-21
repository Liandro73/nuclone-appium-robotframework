***Settings***
Library     AppiumLibrary
Resource    resource.robot

*** Variables ***
${ADD_FRIENDS}                      xpath=//android.widget.TextView[@text='Indicar amigos'] 
${REQUEST_PAYMENT}                  xpath=//android.widget.TextView[@text='Cobrar']
${SEND_MONEY}                       xpath=//android.widget.TextView[@text='Depositar']

***Test Cases***
Show Dashboard Cards
    Open Nuclone App

    Wait Until Element Is Visible   ${ADD_FRIENDS}           ${TIMEOUT}
    Element Text Should Be          ${ADD_FRIENDS}           Indicar amigos

    Wait Until Element Is Visible   ${REQUEST_PAYMENT}       ${TIMEOUT}
    Element Text Should Be          ${REQUEST_PAYMENT}       Cobrar

    Wait Until Element Is Visible   ${SEND_MONEY}            ${TIMEOUT}
    Element Text Should Be          ${SEND_MONEY}            Depositar

    Capture Page Screenshot
    Close Application