            #Language: pt

            Funcionalidade: Adição de produto ao carrinho

            Contexto: Dado que o cliente está na página do produto

            Cenário: Todos os atributos são obrigatórios
            Quando o cliente tenta adicionar o produto ao carrinho
            Então o sistema deve exibir uma mensagem de erro indicando que todos os atributos são obrigatórios

            Cenário: Adicionar produto com atributos válidos
            E o cliente seleciona os atributos: cor "Azul", tamanho "M" e quantidade "2"
            Quando o cliente adiciona o produto ao carrinho
            Então o produto deve ser adicionado ao carrinho com sucesso
            E o número de itens no carrinho deve ser 2

            Cenário: Exceder a quantidade máxima
            
            E o cliente seleciona os atributos: cor "Vermelho", tamanho "G" e quantidade "15"
            Quando o cliente adiciona o produto ao carrinho
            Então o sistema deve exibir uma mensagem de erro indicando que a quantidade máxima permitida é 10

            Cenário: Limpar seleções
            Quando o cliente clica no botão "Limpar seleções"
            Então todos os atributos devem ser redefinidos para seus valores padrão

            Esquema do Cenário: Selecionar quantidade mínima
            Dado que o cliente está na página do produto "<Produto>"
            Quando o cliente adiciona o produto ao carrinho
            Então o produto deve ser adicionado ao carrinho com sucesso
            E o preço total do carrinho deve ser "<Preço Total>"

            Exemplos:
            | Produto         | Preço Total |
            |                 |             |
            | Camiseta Preta  | 29.99       |
            | Calça Jeans     | 99.90       |
            | Tênis Esportivo | 149.99      |
