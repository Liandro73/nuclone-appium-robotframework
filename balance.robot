***Settings***
Library     AppiumLibrary
Resource    resource.robot

*** Variables ***
${CARD_BALANCE}                      accessibility_id=card-hero  
${SHOW_ON_OFF_BALANCE}               accessibility_id=show-balance
${USER_BALANCE}                      accessibility_id=user-balance

***Test Cases***
Show My Balance
    Open Nuclone App

    Wait Until Element Is Visible    ${CARD_BALANCE}                ${TIMEOUT}

    Click Element                    ${SHOW_ON_OFF_BALANCE}

    Wait Until Element Is Visible    ${USER_BALANCE}                ${TIMEOUT}
    Element Text Should Be           ${USER_BALANCE}                R$ 5.500,00

    Capture Page Screenshot
    Close Application