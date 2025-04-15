*** Settings ***
Resource    main.resource

*** Keywords ***
Criar diretoria para depois buscar
    ${BODY}    Create Dictionary    boardName=QUARTO DE BRINCAR ${palavra_aleatoria}  
    Criar Sessao
    ${banana}    Pegar token
    ${CRIAR_DIRETORIA_RESP}    POST On Session    alias=token    url=/board/?token=${banana}    json=${body}    expected_status=any

    #Log To Console    ${CRIAR_DIRETORIA_RESP.json()["newBoard"]["_id"]}

    ${userId}    Set Variable    ${CRIAR_DIRETORIA_RESP.json()["newBoard"]["_id"]}
    
    ${response}    Set Variable    ${CRIAR_DIRETORIA_RESP.json()}

    Set Global Variable    ${userId}
    Set Global Variable    ${response}

Buscar diretorias por id
    ${banana}    Pegar token
    ${BUSCAR_DIRETORIA_POR_ID}    GET On Session    alias=token    url=/board/${userId}?token=${banana}    expected_status=any

    
    ${RESPONDIDO}    Set Variable    ${response}

    Log    \n=== DIRETORIA POR ID CONFORME SOLICITADO ===\n    console=false
    Log    Mensagem de criação de diretoria: ${response['msg']}    console=false
    Log    ID da diretoria criada: ${response['newBoard']['_id']}\n\n    console=false


    Log    \n=== DETALHES DA DIRETORIA PESQUISADA CONFORME O ID PASSADO:===\n    console=false
    Log    ID: ${response['newBoard']['_id']}    console=false
    Log    Nome: ${response['newBoard']['boardName']}    console=false
    Log    Código: ${response['newBoard']['boardCode']}    console=false
    Log    Status: ${response['newBoard']['status']}    console=false
    