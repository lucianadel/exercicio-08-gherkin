            #Language: pt

            
            # Critérios de Aceitação:
            # 1  Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            # 2  Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            # 3  Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.


            Funcionalidade: Cadastro do Cliente na Tela Checkout

            Contexto:
            Dado que sou um cliente da EBAC-SHOP

            Cenário: Cadastro bem-sucedido com todos os dados obrigatórios
            Quando preencho todos os campos obrigatórios com dados válidos
            Então devo concluir meu cadastro com sucesso

            Cenário: Cadastro falha com e-mail em formato inválido
            Quando preencho os campos obrigatórios com um e-mail inválido
            Então o sistema deve exibir a mensagem de erro "E-mail em formato inválido"

            Cenário: Cadastro falha com campos obrigatórios vazios
            Quando deixo um ou mais campos obrigatórios sem preencher
            Então o sistema deve exibir a mensagem de alerta "Preencha todos os campos obrigatórios"

            Cenário: Teste de Limite - Nome com o mínimo de caracteres permitidos
            Quando preencho o campo nome com o mínimo de caracteres permitidos
            Então devo concluir meu cadastro com sucesso

            Cenário: Teste de Limite - Nome com o máximo de caracteres permitidos
            Quando preencho o campo nome com o máximo de caracteres permitidos
            Então devo concluir meu cadastro com sucesso

            Cenário: Teste de Limite - E-mail com o mínimo de caracteres para ser válido
            Quando preencho o campo e-mail com o mínimo de caracteres para ser válido
            Então devo concluir meu cadastro com sucesso

            Cenário: Teste de Limite - E-mail com o máximo de caracteres permitidos
            Quando preencho o campo e-mail com o máximo de caracteres permitidos
            Então devo concluir meu cadastro com sucesso

            Cenário: Teste de Limite - CEP com o número exato de caracteres
            Quando preencho o campo CEP com o número exato de caracteres
            Então devo concluir meu cadastro com sucesso

            Cenário: Teste de Limite - Telefone com o número exato de caracteres
            Quando preencho o campo telefone com o número exato de caracteres
            Então devo concluir meu cadastro com sucesso

            Cenário: Falha ao não preencher o campo telefone
            Quando não preencho o campo telefone
            Então o sistema deve exibir a mensagem de alerta "Preencha o campo telefone"



            Esquema do Cenário: País inválido
            Dado que o usuário está no formulário de cadastro
            Quando o usuário seleciona um <pais_invalido>
            Então o sistema deve exibir a <mensagem> de erro

            Exemplos:
            | pais_invalido      | mensagem_de_erro                                    |
            |                    |                                                     |
            |                    | O campo "País" é obrigatório.                       |
            | "País Inexistente" | País selecionado não existe em nossa base de dados. |
            | "Asgard "          | País selecionado não existe em nossa base de dados. |
            | " BR123 "          | O formato do país está incorreto.                   |
            | "Brasil Brasil "   | O nome do país é muito longo.                       |
