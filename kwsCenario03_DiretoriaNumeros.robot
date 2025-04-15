*** Settings ***
Resource    main.resource
*** Variables ***

*** Keywords ***
Campo diretoria com numeros
    
    ${BODY}    Create Dictionary    boardName=SALA123
    Criar Sessao 
    ${banana}    Pegar token
    ${CRIAR_DIRETORIA_NUM}    POST On Session    alias=token    url=/board/?token=${banana}    json=${body}    expected_status=any

    #Log To Console    ${CRIAR_DIRETORIA_NUM.json()}
    Log    ${CRIAR_DIRETORIA_NUM.json()}