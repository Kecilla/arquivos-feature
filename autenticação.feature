Feature: Login de Autenticação

    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    Scenario: Autenticação válida
        Given que eu acesse a pagina login do portal EBAC
        When eu colocar o e-mail
        E senha validas
        Then deve me direcionar para o checkout

    Scenario Outline: Autenticação inválida
        Given que eu acesse a pagina login do portal EBAC
        Given uma tabela de usuario validas
            | email         | senha |
            | joão@ebac.com | 12345 |
        When eu colocar o <e-mail>
        E a <senha>
        Then deve aparecer uma mensagem de alerta <mensagem>
            Exemples:
            | e-mail        | senha | mensagem                   |
            | joão@ebac.com | 12345 | Checkout   relizado        |
            | joão@ebac.com | 1253  | "email ou senha invalidos" |
            |               | 12345 | "email não informado"      |
            | joão@ebac.com |       | "senha não informado"      |