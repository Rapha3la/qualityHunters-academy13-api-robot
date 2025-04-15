*** Settings ***
Resource    main.resource

*** Variables ***

*** Keywords ***
Campo diretoria mais de 50 caracteres.
    ${BODY}    Create Dictionary    boardName=MAIOR 50 A MAIOR 50 B MAIOR 50 C MAIOR 50 D MAIOR 50
    Criar Sessao
    ${banana}    Pegar token
    ${CRIAR_DIRETORIA_MAI_MIN_E}    POST On Session    alias=token    url=/board/?token=${banana}    json=${body}    expected_status=any

    #Log To Console    ${CRIAR_DIRETORIA_MAI_MIN_E.json()}
    Log    ${CRIAR_DIRETORIA_MAI_MIN_E.json()}