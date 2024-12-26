#Language:pt

Funcionalidade: Autenticação de Usuário

Contexto:
Dado que estou na página de login da EBAC-SHOP

Cenário: Login bem-sucedido com credenciais válidas
Dado que eu insiro um nome de usuário válido
E eu insiro uma senha válida
Quando eu clicar no botão de login
Então eu devo ser redirecionado para a tela de checkout

Cenário: Login mal-sucedido com nome de usuário inválido
Dado que eu insiro um nome de usuário inválido
E eu insiro uma senha válida
Quando eu clicar no botão de login
Então deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

Cenário: Login mal-sucedido com senha inválida
Dado que eu insiro um nome de usuário válido
E eu insiro uma senha inválida
Quando eu clicar no botão de login
Então deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

Cenário: Login mal-sucedido com ambos os campos inválidos
Dado que eu insiro um nome de usuário inválido
E eu insiro uma senha inválida
Quando eu clicar no botão de login
Então deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

Cenário: Campo de nome de usuário em branco
Dado que eu deixo o campo de nome de usuário em branco
E eu insiro uma senha válida
Quando eu clicar no botão de login
Então deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

Cenário: Campo de senha em branco
Dado que eu insiro um nome de usuário válido
E eu deixo o campo de senha em branco
Quando eu clicar no botão de login
Então deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

Cenário: Ambos os campos em branco
Dado que eu deixo o campo de nome de usuário em branco
E eu deixo o campo de senha em branco
Quando eu clicar no botão de login
Então deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
