    #language:pt

    Funcionalidade: Login

    Contexto: Given que o cliente está na página de login

    Scenario: Login com dados válidos

When o cliente insere o nome de usuário "usuarioValido"
And o cliente insere a senha "senhaValida"
And o cliente clica no botão "Login"
Then o cliente deve ser direcionado para a tela de checkout


# Cenário de falha
Scenario: Login com nome de usuário inválido

When o cliente insere o nome de usuário "usuarioInvalido"
And o cliente insere a senha "senhaValida"
And o cliente clica no botão "Login"
Then uma mensagem de alerta deve ser exibida "Usuário ou senha inválidos"

Scenario: Login com senha inválida

When o cliente insere o nome de usuário "usuarioValido"
And o cliente insere a senha "senhaInvalida"
And o cliente clica no botão "Login"
Then uma mensagem de alerta deve ser exibida "Usuário ou senha inválidos"

Scenario: Login com nome de usuário e senha inválidos

When o cliente insere o nome de usuário "usuarioInvalido"
And o cliente insere a senha "senhaInvalida"
And o cliente clica no botão "Login"
Then uma mensagem de alerta deve ser exibida "Usuário ou senha inválidos"


Scenario: Login com nome de usuário vazio

When o cliente deixa o campo de nome de usuário vazio
And o cliente insere a senha "senhaValida"
And o cliente clica no botão "Login"
Then uma mensagem de alerta deve ser exibida "Usuário ou senha inválidos"

Scenario: Login com senha vazia

When o cliente insere o nome de usuário "usuarioValido"
And o cliente deixa o campo de senha vazio
And o cliente clica no botão "Login"
Then uma mensagem de alerta deve ser exibida "Usuário ou senha inválidos"

Scenario: Login com nome de usuário e senha vazios

When o cliente deixa o campo de nome de usuário vazio
And o cliente deixa o campo de senha vazio
And o cliente clica no botão "Login"
Then uma mensagem de alerta deve ser exibida "Usuário ou senha inválidos"

