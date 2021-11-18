Feature: Pagina de Produto

    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    e escolher a quantidade
    Para depois inserir no carrinho

    Scenario Outline: Teste adicionar ao carrinho
        Given que eu acesse a pagina de Compra do Portal EBAC
        When adicionar a cor <cor>
        When adicionar a quantidade <quantidade>
        When adicioanr o tamanho <tamanho>
        Then o botão adicionar ao carrinho deve ficar <habilitado>
        e deve aparecer a seguinte mensagem <mensagem>
        Examples:
            | cor     | quantidade | tamanho | habilitado | mensagem                               |
            | amarelo | 1          | 1       | Sim        | produtos adicionado ao carrinho        |
            |         | 1          | 1       | Nao        | erro: cor nao informada                |
            | amarelo |            | 1       | Nao        | erro: quantidade nao informada         |
            | amarelo | 1          |         | Nao        | erro: tamanho nao informada            |
            | amarelo | 11         | 3       | Nao        | erro: quantidade deve ser menor que 10 |

    Scenario: Teste do botão limpar
        Given que eu acesse o carrinho de compra
        When eu apertar o botão limpar
        Then o carrinho deve ficar limpo



         



