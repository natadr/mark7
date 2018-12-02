#language: pt
Funcionalidade: Cadastro de usuários
    Sendo um visitante
    Posso fazer meu cadastro
    Para poder gerenciar minhas tarefas

    Contexto: Formulário
        Dado que eu estou no formulário de cadastro

    @sprint3 @logout 
    Esquema do Cenário: Cadastro simples
        
        Quando faço o meu cadastro com "<nome_correto>" , "<email_correto>" e "<senha_correta>"
        Então vejo a mensagem "<saida_correta>"

        Exemplos:
            | nome_correto | email_correto          | senha_correta| saida_correta|           
            | Natasha      | rsaron_na7@hotmail.com | 123456       | Olá, Natasha |
            | Vinícius     | viniciu8@teste.com.br  | automacao    | Olá, Vinícius|  
            | Natália      | natali9@teste.com.br   | senha1       | Olá, Natália |
            | Natâny       | natana0@yahoo.com      | teste2       | Olá, Natâny  |
            | Eduardo      | eduard1@hotmail.com    | eu1234       | Olá, Eduardo |

    @tentativa_cadastro
    Esquema do Cenario: Campos obrigatórios

        Quando faço o meu cadastro com "<nome>" , "<email>" e "<senha>"
        Então vejo a mensagem de aviso "<saida>"

        Exemplos:
            | nome     | email                  | senha    | saida                |
            |          | fernando@qaninja.net   | 123456   | Nome é obrigatório.  |
            | Fernando |                        | 123456   | Email é obrigatório. |
            | Fernando | fernando@qaninja.net   |          | Informe uma senha.   |
            | Natasha  | rsaron_na5@hotmail.com | 123456   | Email já existe      |
            | Vinícius | viniciu6@teste.com.br  | automacao| Email já existe      |  
            | Natália  | natali7@teste.com.br   | senha1   | Email já existe      |
            | Natâny   | natana8@yahoo.com      | teste2   | Email já existe      |
            | Eduardo  | eduard9@hotmail.com    | eu1234   | Email já existe      |
            | Eduardo  | eduard9@hotmail.com    | e   | Sua senha deve ter pelo menos 6 caracteres.|      