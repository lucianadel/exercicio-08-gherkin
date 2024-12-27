            #Language:pt



# Critérios de Aceitação:
# 1  Ao inserir dados válidos deve ser direcionado para a tela de checkout
# 2 Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”


            Funcionalidade: Autenticação na plataforma EBAC-SHOP

            Contexto:
            Dado que o usuário está na página de login da EBAC-SHOP

            Cenário: Login com Credenciais Válidas
            Quando o usuário insere um e-mail válido "luna.maria@email.com" e uma senha válida "Senha123@"
            E clica no botão de login
            Então o usuário deve ser redirecionado para a tela de checkout

            Cenário: Login com E-mail Inválido
            Quando o usuário insere um e-mail inválido "luma maria" e uma senha válida "Senha123@"
            E clica no botão de login
            Então o usuário deve ver a mensagem de erro "E-mail inválido"

            Cenário: Login com Senha Inválida
            Quando o usuário insere um e-mail válido "luna.maria@email.com" e uma senha inválida "senha123" (menos de 8 caracteres)
            E clica no botão de login
            Então o usuário deve ver a mensagem de erro "Senha deve conter no mínimo 8 caracteres"

            Cenário: Login com Campos em Branco
            Quando o usuário deixa os campos de e-mail e senha em branco
            E clica no botão de login
            Então o usuário deve ver a mensagem de erro "Por favor, preencha todos os campos"

            Funcionalidade: Autenticação na plataforma EBAC-SHOP

            Cenário: Login com Caracteres Especiais
            Dado que o usuário está na página de login
            Quando o usuário insere o e-mail <email> e a senha <senha>
            E clica no botão de login
            Então o usuário deve ver a mensagem de erro "<mensagem_de_erro>"

            Exemplos:
            | email                                | senha       | mensagem_de_erro                                                                        |
            | ------------------------------------ | ----------- | --------------------------------------------------------------------------------------- |
            | "luna.maria@email.com# "             | Senha123@   | E-mail inválido: Caracteres especiais não permitidos após o domínio.                    |
            | "luna.maria@email<br>com "           | Senha123@   | E-mail inválido: Caracteres especiais não permitidos no corpo do e-mail.                |
            | " luna.maria@email.com "             | Senha123@   | E-mail inválido: Caracteres especiais não permitidos no corpo do e-mail.                |
            | " luna.maria@email.com; "            | Senha123@   | E-mail inválido: Caracteres especiais não permitidos no corpo do e-mail.                |
            |                                   |          |                                                                                     |
