*** Settings ***
Resource    main.resource
*** Variables ***

*** Keywords ***
Campo diretoria é obrigatório
    
    ${BODY}    Create Dictionary    boardName=
    Criar Sessao 
    ${banana}    Pegar token
    ${CRIAR_DIRETORIA_OBRIGATORIO}    POST On Session    alias=token    url=/board/?token=${banana}    json=${body}    expected_status=any

    #Log To Console    ${CRIAR_DIRETORIA_OBRIGATORIO.json()}
    Log    ${CRIAR_DIRETORIA_OBRIGATORIO.json()}