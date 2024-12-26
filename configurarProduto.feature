            #Language:pt

            Funcionalidade: Configurar Produto
            Contexto: Dado que estou na página de configuração do produto

            Como cliente da EBAC-SHOP
            Eu quero configurar meu produto de acordo com meu tamanho e gosto
            Para inserir no carrinho

            Cenário: Configuração válida
            Quando seleciono a cor "Azul" e o tamanho "M" e a quantidade "2"
            Então o produto é configurado corretamente e posso adicioná-lo ao carrinho

            Cenário: Quantidade máxima
            Quando seleciono a cor "Vermelho" e o tamanho "L" e a quantidade "10"
            Então o produto é configurado corretamente e posso adicioná-lo ao carrinho

            Cenário: Quantidade inválida
            Quando seleciono a cor "Amarelo" e o tamanho "S" e a quantidade "11"
            Então recebo uma mensagem de erro informando sobre o limite de quantidade

            Cenário: Opções obrigatórias
            Quando não seleciono nenhuma opção obrigatória
            Então recebo uma mensagem de erro informando que todas as seleções são obrigatórias

            Cenário: Limpar configuração
            Dado que configurei o produto com as opções <cor>, <tamanho> e <quantidade>
            Quando clico em "limpar"
            Então a configuração do produto é resetada

            ## Exemplos:

            | Cor   | Tamanho | Quantidade |
            | ---   | ---     | ---        |
            | Verde | M       | 5          |
            | Preto | L       | 3          |