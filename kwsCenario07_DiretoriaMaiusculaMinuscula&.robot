*** Settings ***
Resource    main.resource

*** Variables ***

*** Keywords ***


Criar diretoria com letras maiusculas, minusculas e &    
    ${BODY}    Create Dictionary    boardName=Quarto & Sala ${palavra_aleatoria} 
    Criar Sessao
    ${banana}    Pegar token
    ${CRIAR_DIRETORIA_MAI_MIN_E}    POST On Session    alias=token    url=/board/?token=${banana}    json=${body}    expected_status=any

    #Log To Console    ${CRIAR_DIRETORIA_MAI_MIN_E.json()}
    Log    ${CRIAR_DIRETORIA_MAI_MIN_E.json()}