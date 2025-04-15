*** Settings ***
Resource    main.resource

*** Keywords ***
Criar diretoria para depois editar
    ${BODY}    Create Dictionary    boardName=QUARTO DE ROUPAS ${palavra_aleatoria} 
    Criar Sessao
    ${banana}    Pegar token
    ${CRIAR_DIRETORIA_EDITAR}    POST On Session    alias=token    url=/board/?token=${banana}    json=${body}    expected_status=any

    #Log To Console    ${CRIAR_DIRETORIA_EDITAR.json()["newBoard"]["_id"]}
    Log    ${CRIAR_DIRETORIA_EDITAR.json()["newBoard"]["_id"]}

    ${userId}    Set Variable    ${CRIAR_DIRETORIA_EDITAR.json()["newBoard"]["_id"]}
    
    Set Global Variable    ${userId}
    
Editar diretoria
    ${BODY}    Create Dictionary    boardName=OPERAÇÕES ESPECIAIS ${palavra_aleatoria} 
    Criar Sessao
    ${banana}    Pegar token
    ${EDITAR_DIRETORIA}    PUT On Session    alias=token    url=/board/${userId}?token=${banana}    json=${body}    expected_status=any

    #Log To Console    ${EDITAR_DIRETORIA.json()}
    Log    ${EDITAR_DIRETORIA.json()}