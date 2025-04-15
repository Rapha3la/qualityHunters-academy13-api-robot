*** Settings ***
Resource    main.resource

*** Keywords ***

Buscar todas as diretorias e mostrar no console
    ${banana}    Pegar token
    ${TDS_DIRETORIAS}        GET On Session    alias=token    url=/board/?token=${banana}
    ${boards}    Set Variable    ${TDS_DIRETORIAS.json()}
    
    Log    \n=== LISTA DE DIRETORIAS ===\n    console=false

    FOR    ${board}    IN    @{boards}
        ${board_name}    Get From Dictionary    ${board}    boardName
        ${board_code}    Get From Dictionary    ${board}    boardCode
        ${board_id}      Get From Dictionary    ${board}    _id
        
        Log    Nome: ${board_name} | Código: ${board_code} | ID: ${board_id}    console=false
    END