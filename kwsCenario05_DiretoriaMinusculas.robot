*** Settings ***
Resource    main.resource

*** Variables ***

*** Keywords ***
Campo diretoria letras minusculas
    
    ${BODY}    Create Dictionary    boardName=sala de tv ${palavra_aleatoria} 
    Criar Sessao 
    ${banana}    Pegar token
    ${CRIAR_DIRETORIA_MINUSCULA}    POST On Session    alias=token    url=/board/?token=${banana}    json=${body}    expected_status=any

    #Log To Console    ${CRIAR_DIRETORIA_MINUSCULA.json()}
    Log    ${CRIAR_DIRETORIA_MINUSCULA.json()}