            #Language:pt

            Funcionalidade: Tela de Cadastro - Checkout

            Contexto:
            Dado que estou na tela de cadastro do checkout

            Esquema do Cenário: Cadastro bem-sucedido com dados obrigatórios
            Quando preencho o campo nome com ""
            E preencho o campo sobrenome com ""
            E preencho o campo email com ""
            E preencho o campo senha com ""
            E marco a caixa "Aceito os termos"
            Então devo ver a mensagem "Cadastro realizado com sucesso"

            Exemplos:
            | nome | sobrenome | email            | senha |
            | Luna | Silva     | maria@gmail.com  | 555   |
            | João | Silva     | silva@outlok.com | 789   |


            Esquema do Cenário: Campo de e-mail com formato inválido
            Quando preencho o campo nome com ""
            E preencho o campo sobrenome com ""
            E preencho o campo email com ""
            E preencho o campo senha com ""
            E marco a caixa "Aceito os termos"
            Então devo ver a mensagem de erro "Formato de e-mail inválido"

            Exemplos:
            | nome | sobrenome | email      | senha |
            | Luna | Silva     | maria@.com | 555   |
            | João | Silva     | silva@mail | 789   |


            Esquema do Cenário: Campos obrigatórios vazios
            Quando deixo o campo nome em branco
            E deixo o campo sobrenome em branco
            E deixo o campo email em branco
            E deixo o campo senha em branco
            Então devo ver a mensagem de alerta "Campos obrigatórios não podem estar vazios"

            Exemplos:
            | nome | sobrenome | email | senha |
            |      |           |       |       |

            Esquema do Cenário: Cadastro faltando campos obrigatórios
            Quando preencho o campo nome com "Pedro"
            E preencho o campo sobrenome com "Souza"
            E deixo o campo email em branco
            E preencho o campo senha com "senha123"
            Então devo ver a mensagem de alerta "Email é um campo obrigatório"

            Exemplos:
            | nome  | sobrenome | email | senha    |
            | Pedro | Souza     |       | senha123 |

            Esquema do Cenário: Tentativa de cadastro sem aceitar os termos
            Quando preencho o campo nome com "Lucas"
            E preencho o campo sobrenome com "Santos"
            E preencho o campo email com "lucas@exemplo.com"
            E preencho o campo senha com "senha789"
            E não marco a caixa "Aceito os termos"
            Então devo ver a mensagem de alerta "É necessário aceitar os termos para continuar"

            Exemplos:
            | nome  | sobrenome | email             | senha |
            | Lucas | Santos    | lucas@exemplo.com | 789   |

