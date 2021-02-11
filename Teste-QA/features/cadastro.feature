#language: pt

Funcionalidade: Cadastro
    EU COMO usuário do sistema. 
    DESEJO realizar o cadastro de novos usuários. 
    PARA QUE seja possível armazenar e gerenciar seus dados.

    @cadastro
    Cenario: Fazer cadastro
        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulário de cadastro:
            | nome                              | email                      | senha       |
            | Gelson Santana de Oliveira Junior | gelson.santana@hotmail.com | 12345678    |
        Então sou redirecionado para o Dashboard


    Esquema do Cenario: Tentativa de Cadastro

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulário de cadastro:
            | nome         | email         | senha         |
            | <nome_input> | <email_input> | <senha_input> |
        Então vejo a mensagem de alerta: "<mensagem_output>"


        Exemplos:
            | nome_input                        | email_input                | senha_input | mensagem_output                            |
            |                                   | gelson.santana@hotmail.com | 12345678    | O campo Nome é obrigatório.                |
            | Gelson                            | gelson.santana@hotmail.com | 12345678    | Por favor, insira um nome completo.        |
            | Gelson Santana de Oliveira Junior |                            | 12345678    | O campo E-mail é obrigatório.              |
            | Gelson Santana de Oliveira Junior | gelson&%.com               | 12345678    | Por favor, insira um e-mail válido.        |
            | Gelson Santana de Oliveira Junior | gelson.santana@hotmail.com |             | O campo Senha é obrigatório.               |
            | Gelson Santana de Oliveira Junior | gelson.santana@hotmail.com | 1234567     | A senha deve conter ao menos 8 caracteres. |



