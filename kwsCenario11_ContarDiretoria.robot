*** Settings ***
Resource    main.resource

*** Keywords ***

Contar diretoria
    ${banana}    Pegar token
    Criar Sessao
    ${CONTAR_DIRETORIAS}    GET On Session    alias=token    url=/board/count/?token=${banana}    expected_status=any

    #Log To Console    ${CONTAR_DIRETORIAS.json()}
    Log    ${CONTAR_DIRETORIAS.json()}