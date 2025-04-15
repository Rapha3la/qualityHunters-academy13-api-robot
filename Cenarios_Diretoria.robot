*** Settings ***
Resource    main.resource


*** Test Cases ***

Cenário 01: Criar diretoria
    Criar um novo usuário método Generate Random String
    Criar diretoria

Cenário 02: Campo diretoria é obigatório
    Campo diretoria é obrigatório 

Cenário 03: Campo diretoria letras maiúsculas, minúsculas e o caractere especial &.
    Campo diretoria com numeros  

Cenário 04: Campo diretoria letras maiúsculas.
    Criar um novo usuário método Generate Random String
    Campo diretoria letras maiusculas

Cenário 05: Campo diretoria letras minúsculas.
    Criar um novo usuário método Generate Random String minusculas
    Campo diretoria letras minusculas 

Cenário 06: Campo diretoria com caracteres especiais apenas
    Criar diretoria com caracteres especiais apenas 

Cenário 07: Campo diretoria com letras maiusculas, minusculas e &
    Criar um novo usuário método Generate Random String
    Criar diretoria com letras maiusculas, minusculas e &

Cenário 08: Campo diretoria mais de 50 caracteres.
    Campo diretoria mais de 50 caracteres.

Cenario 09: Buscar diretorias
    Buscar todas as diretorias e mostrar no console

Cenario 10: Buscar diretorias por id
    Criar um novo usuário método Generate Random String
    Criar diretoria para depois buscar
    Buscar diretorias por id

Cenario 11: Contar diretorias
    Contar diretoria

Cenario 12: Editar diretoria
    Criar um novo usuário método Generate Random String
    Criar diretoria para depois editar
    Editar diretoria