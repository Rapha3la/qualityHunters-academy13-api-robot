*** Settings ***

Resource    main.resource

*** Keywords ***

Criar um novo usuário método Generate Random String

    #Criando um email aleatório com 4 letras usando a expressão reservada Generation Randon String:
    ${palavra_aleatoria}    Generate Random String    length=2    chars=[LETTERS]
    #Log To Console    Minha palavra aleatória EM TELA: ${palavra_aleatoria}@email.teste.com
    #Log    Minha palavra aleatória NO LOG: ${palavra_aleatoria}@email.teste.com

    ${palavra_aleatoria}    Convert To Upper Case    ${palavra_aleatoria}
    #Log To Console    Meu email final EM TELA: ${palavra_aleatoria}@email.teste.com
    #Log    Meu email final EM LOG: ${palavra_aleatoria}@email.teste.com

    Set Test Variable    ${EMAIL_TESTE}   ${palavra_aleatoria}    #@email.teste.com 

    Set Global Variable    ${palavra_aleatoria}

    # Explicando passo a passo:

    # 1. Utilizei a expressão reservada para criar uma palavra com 4 letras aleatórias e armazenei na variável ${palavra_aleatoria}.
    # 2. Imprimi no log para ver como ficou a minha palavra gerada.
    # 3. Peguei a palavra gerada na minha variável${palavra_aleatoria} e usei a expressão reservada Covert To Lower Case para converter em minúscula caso tenha sido gerada alguma letra maiúscula.
    # 3. Imprimi novamente no log para me certificar que todas as letras são minúsculas.
    # 4. Criei a variável ${EMAIL_TESTE} para concatenar a palavra aleatória que criei com o @email.teste.com e ficar melhor de usar nos testes.

Criar um novo usuário método buscando dados da api externa 5DEVS
    #Posso gerar esse mail também buscando na api faker da seguinte forma:
    ${RESPOSTA}               GET                               url=${5DEVS_API}
    ${DADOS}                  Set Variable                      ${RESPOSTA.json()}

    ${EMAIL_FAKER_API}        Set Variable                      ${RESPOSTA.json()["email"]}
    ${NOME_FAKER_API}        Set Variable                      ${RESPOSTA.json()["nome"]}
    ${CPF_FAKER_API}        Set Variable                      ${RESPOSTA.json()["cpf"]}
      
    Set Global Variable    ${NOME_FAKER_API}
    Set Global Variable    ${CPF_FAKER_API}
    Set Global Variable    ${EMAIL_FAKER_API}
    

    Log To Console    ${NOME_FAKER_API}
    Log To Console    ${CPF_FAKER_API}
    Log To Console    ${EMAIL_FAKER_API}

    # Explicando passo a passo:

    # 1. A variável ${RESPOSTA} recebe o resultado da requisição GET feita para 5DEVS_API.
    # 2. A resposta da API vem em formato JSON.
    # 3. A variável ${DADOS} armazena os dados convertidos em um objeto do Robot Framework.
    # 4. Isso significa que agora ${DADOS} contém todos os dados da resposta da API 5DEVS_API.
    # 5. O código está pegando valores específicos dentro da resposta JSON da 5DEVS_API.
    # 6. Ele armazena esses valores em variáveis individuais para facilitar o uso nos testes.
    # 7. ${EMAIL_FAKER_API} → E-mail gerado pela API (Variável individual).

Criar um novo usuário método Generate Random String minusculas

    #Criando um email aleatório com 4 letras usando a expressão reservada Generation Randon String:
    ${palavra_aleatoria}    Generate Random String    length=2    chars=[LETTERS]
    #Log To Console    Minha palavra aleatória EM TELA: ${palavra_aleatoria}@email.teste.com
    #Log    Minha palavra aleatória NO LOG: ${palavra_aleatoria}@email.teste.com

    ${palavra_aleatoria}    Convert To Lower Case    ${palavra_aleatoria}
    #Log To Console    Meu email final EM TELA: ${palavra_aleatoria}@email.teste.com
    #Log    Meu email final EM LOG: ${palavra_aleatoria}@email.teste.com

    Set Test Variable    ${EMAIL_TESTE}   ${palavra_aleatoria}    #@email.teste.com 

    Set Global Variable    ${palavra_aleatoria}