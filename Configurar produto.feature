            #language:pt

            Funcionalidade: Configuração de Produtos na EBAC-SHOP

            Contexto:
            Dado que estou na página de configuração do produto

            Esquema do Cenario: Configurar um produto com cor,
            tamanho e quantidade
            Quando seleciono a cor ""
            E seleciono o tamanho ""
            E seleciono a quantidade ""
            E clico no botão "adicionar ao carrinho"
            Então o produto deve ser adicionado ao carrinho com sucesso

            Exemplos:
            | cor    | tamanho        | quantidade |
            | Blue   | XS, S, M, L,XL | <=10       |
            | Orange | XS,S,M,L,XL    | <=10       |
            | Red    | XS,S,M,L,XL    | <=10       |

Cenario: Tentativa de adicionar produto sem seleção obrigatória
Quando tento adicionar o produto ao carrinho sem selecionar cor
Então devo ver uma mensagem de erro 'A seleção de cor é obrigatória'

Quando tento adicionar o produto ao carrinho sem selecionar tamanho
Então devo ver uma mensagem de erro 'A seleção de tamanho é obrigatória'

Quando tento adicionar o produto ao carrinho sem selecionar quantidade
Então devo ver uma mensagem de erro 'A seleção de quantidade é obrigatória'

Cenario: Tentativa de adicionar mais de 10 produtos ao carrinho
Quando seleciono a cor "Blue"
E seleciono o tamanho "M"
E seleciono a quantidade "11"
E clico no botão "adicionar ao carrinho"
Então devo ver uma mensagem de erro 'Não é permitido adicionar mais de 10 produtos por venda'

Cenario: Limpar seleção
Dado que eu selecionei a cor "Blue",
tamanho "M" e quantidade "3"
Quando eu clico no botão "limpar"
Então a seleção deve voltar ao estado original

Cenario: Estado inicial após limpeza
Quando clico no botão "limpar"
Então cor,
tamanho e quantidade devem ser redefinidos para os valores padrão