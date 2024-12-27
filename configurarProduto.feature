            #Language:pt

            # Critérios de Aceitação:
            # 1  Seleções de cor, tamanho e quantidade devem ser obrigatórios
            # 2 Deve permitir apenas 10 produtos por venda
            # 3 Quando eu clicar no botão “limpar” deve voltar ao estado original

            Funcionalidade: Configurar Produto
            Contexto: Dado o usuário esteja na página de configuração do produto

            Como cliente da EBAC-SHOP
            Eu quero configurar meu produto de acordo com meu tamanho e gosto
            Para inserir no carrinho

            Cenário: Configuração válida
            Quando selecionar a cor "Azul" e o tamanho "M" e a quantidade "2"
            Então o produto é configurado corretamente e posso adicioná-lo ao carrinho

            Cenário: Quantidade máxima
            Quando selecionar a cor "Vermelho" e o tamanho "L" e a quantidade "10"
            Então o produto é configurado corretamente e posso adicioná-lo ao carrinho

            Cenário: Quantidade inválida
            Quando selecionar a cor "Amarelo" e o tamanho "S" e a quantidade "11"
            Então recebo uma mensagem de erro informando sobre o limite de quantidade

            Cenário: Opções obrigatórias
            Quando não selecionar nenhuma opção obrigatória
            Então recebo uma mensagem de erro informando que todas as seleções são obrigatórias

            Cenário: Limpar configuração
            Dado que configure o produto com as opções <cor>, <tamanho> e <quantidade>
            Quando clicar em "limpar"
            Então a configuração do produto é resetada

            Exemplos:

            | Cor   | Tamanho | Quantidade |
            |       |         |            |
            | Verde | M       | 5          |
            | Preto | L       | 3          |