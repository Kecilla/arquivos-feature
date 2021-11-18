Feature: Cadastro para finalizar compra
    Essa feature valida todos os tipos de validacao
    no cadastro antes de finalizar a compra.

    Scenario Outline: Validar os campos obrigatorios antes de finalizar o cadastro
        Given eu que acesse a tela de cadastro
        When eu precher os seguintes campos abaixo:
            | nome   | sobrenome   | pais   | endereco   | cidade   | estado   | cep   | telefone   | email   |
            | <nome> | <sobrenome> | <pais> | <endereco> | <cidade> | <estado> | <cep> | <telefone> | <email> |
        And quando eu tentar finalizar o meu cadastro
        Then deve aparecer a seguinte mensagem de alerta <mensagem>

        Examples:
            | nome   | sobrenome | pais     | endereco | cidade     | estado | cep        | telefone | email               | mensagem                       |
            | "Gean" | "Silva"   | "Brasil" | "Rua 1"  | "Campinas" | "SP"   | "13199922" | "190"    | "valid@email.com"   | "Cadastro com sucesso"         |
            | "Gean" | "Silva"   |          | "Rua 1"  | "Campinas" | "SP"   | "13199922" | "190"    | "valid@email.com"   | "Cadastro com sucesso"         |
            | "Gean" | "Silva"   |          | "Rua 1"  | "Campinas" | "SP"   | "13199922" | "190"    | "invalid#email.com" | "Formato do email e invalido"  |
            | "Gean" |           | "Brasil" | "Rua 1"  | "Campinas" | "SP"   | "13199922" | "190"    | "valid@email.com"   | "Campos em branco 'sobrenome'" |
            | "Gean" | "Silva"   | "Brasil" |          | "Campinas" | "SP"   | "13199922" | "190"    | "valid@email.com"   | "Campos em branco 'endereco'"  |