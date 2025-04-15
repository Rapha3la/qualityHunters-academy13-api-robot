*** Settings ***
Resource    main.resource

*** Variables ***

*** Keywords ***
Criar diretoria com caracteres especiais apenas
    ${BODY}    Create Dictionary    boardName=%¨&%$#$%
    Criar Sessao
    ${banana}    Pegar token
    ${CRIAR_DIRETORIA_CARAC_ESPEC}    POST On Session    alias=token    url=/board/?token=${banana}    json=${body}    expected_status=any

    #Log To Console    ${CRIAR_DIRETORIA_CARAC_ESPEC.json()}
    Log    ${CRIAR_DIRETORIA_CARAC_ESPEC.json()}