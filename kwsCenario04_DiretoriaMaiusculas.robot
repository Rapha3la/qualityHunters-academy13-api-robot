*** Settings ***
Resource    main.resource

*** Variables ***

*** Keywords ***
Campo diretoria letras maiusculas
    
    ${BODY}    Create Dictionary    boardName=SALA DE ESTAR ${palavra_aleatoria} 
    Criar Sessao 
    ${banana}    Pegar token
    ${CRIAR_DIRETORIA_MAIUSCULA}    POST On Session    alias=token    url=/board/?token=${banana}    json=${body}    expected_status=any

    #Log To Console    ${CRIAR_DIRETORIA_MAIUSCULA.json()}
    Log    ${CRIAR_DIRETORIA_MAIUSCULA.json()}