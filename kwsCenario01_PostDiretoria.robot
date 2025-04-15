*** Settings ***
Resource    main.resource

*** Variables ***



*** Keywords ***

Criar Sessao
    ${headers}    Create Dictionary    accept=application/json    Content-Type=application/json
    Create Session    alias=token    url=${BASE_URL}    headers=${headers}    verify=true

Pegar token
    ${BODY}    Create Dictionary
    ...    mail=sysadmin@qacoders.com
    ...    password=1234@Test
    #Log To Console    ${BODY}
    Criar Sessao
    ${RESPOSTA}    POST On Session    alias=token    url=/login    json=${BODY}
    #Log To Console    ${RESPOSTA}
    Log    ${RESPOSTA}
    RETURN    ${RESPOSTA.json()["token"]}

Criar diretoria
    ${BODY}    Create Dictionary    boardName=DIRETORIA DE APOIO ${palavra_aleatoria}
    Criar Sessao
    ${banana}    Pegar token
    ${CRIAR_DIRETORIA_RESP}    POST On Session    alias=token    url=/board/?token=${banana}    json=${body}    expected_status=any

    #Log To Console    ${CRIAR_DIRETORIA_RESP.json()}
    Log     ${CRIAR_DIRETORIA_RESP.json()}

# Criar diretoria kws 2
#     ${BODY}    Create Dictionary    boardName=SALA
#     Criar Sessao
#     ${banana}    Pegar token
#     ${CRIAR_DIRETORIA_RESP}    POST On Session    alias=token    url=/board/?token=${banana}    json=${body}    expected_status=any
    
#     #Log To Console    ${CRIAR_DIRETORIA_RESP.json()["newBoard"]["_id"]}

#     ${fofinha}    Set Variable    ${CRIAR_DIRETORIA_RESP.json()["newBoard"]["_id"]}

#     Set Global Variable    ${fofinha}

#     Log To Console    MINHA FOFINHA È: ${fofinha}
    
#     Log To Console    ${CRIAR_DIRETORIA_RESP.json()}

    

#     RETURN    ${fofinha}

# Buscar diretorias 
#     ${banana}    Pegar token
#     ${BUSCAR_TDS_DIRETORIAS}    GET On Session    alias=token    url=/board/?token=${banana}

#     Log To Console    ${BUSCAR_TDS_DIRETORIAS.json()}
#     Log To Console    ${BUSCAR_TDS_DIRETORIAS.json()["boardCode"][1]}



