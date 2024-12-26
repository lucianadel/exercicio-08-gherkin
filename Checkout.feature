            #Language:pt

            Funcionalidade: Cadastro de Cliente

            Esquema do Cenário: Cadastro bem-sucedido
            Quando o usuário preenche o formulário com <nome>, <email>, <senha> e clica em "Cadastrar"
            Então é direcionado para a página de agradecimento

            Exemplos:
            | Nome             | Email                | Senha      |
            | ---------------- | -------------------- | ---------- |
            | João da Silva    | joao@email.com       | senha123   |
            | Maria Pereira    | maria@exemplo.com    | senha1234  |
            | Pedro Santos     | pedro@teste.com      | senha5678  |

            Esquema do Cenário: Email inválido
            Quando o usuário preenche o formulário com <nome>, <email>, <senha> e clica em "Cadastrar"
            Então deve ver a mensagem "<mensagem>" dentro do elemento com id "mensagem-erro-email"

            Exemplos:
            | Nome           | Email                | Senha   | Mensagem                                                                    |
            | -------------- | -------------------- | ------- | --------------------------------------------------------------------------- |
            | João Silva     | joaoemail.com        | 123     | O email deve conter um '@'.                                                 |
            | Maria Pereira  | maria@exemplo,com    | abc     | Use um ponto (.) após o nome de usuário no email.                           |
            | Pedro Santos   | pedro@teste..com     | 12345   | O email contém caracteres inválidos.                                        |
            | Ana Souza      | ana@123.456          | abcde   | O domínio do email é inválido.                                              |
            | Bruno Costa    | bruno_costa@gmail    | 123456  | O nome de usuário deve conter apenas letras e números.                      |

            Cenário: Campos obrigatórios
            Quando o usuário clica em "Cadastrar" sem preencher nenhum campo
            Então deve ver a mensagem "Todos os campos são obrigatórios"

            Cenário: Todos os campos vazios
            Quando o usuário clica em "Cadastrar"
            Então deve ver a mensagem "Todos os campos são obrigatórios"

            Esquema do Cenário: Senha fraca
            Quando o usuário preenche o formulário com <nome>, <email>, <senha> e clica em "Cadastrar"
            Então deve ver a mensagem "<mensagem>"

            Exemplos:
            | Nome           | Email                | Senha   | Mensagem                                                                    |
            | -------------- | -------------------- | ------- | --------------------------------------------------------------------------- |
            | João Silva     | joao@email.com       | 123     | A senha deve ter pelo menos 8 caracteres.                                   |
            | Maria Pereira  | maria@exemplo.com    | abc     | A senha deve conter pelo menos um caractere especial.                       |
            | Pedro Santos   | pedro@teste.com      | 12345   | A senha deve conter pelo menos um número e uma letra maiúscula.             |

            Cenário: Usuário já existente
            Dado que existe um usuário cadastrado com o email "joao@email.com"
            Quando o usuário tenta cadastrar com o mesmo email
            Então deve ver a mensagem "Email já cadastrado"