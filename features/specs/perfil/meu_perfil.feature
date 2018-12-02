#language: pt

Funcionalidade: Meu pefil
    Para que eu possa manter meus dados atualizados
    Sendo um usuário
    Posso completar o meu cadastro do perfil

    @sprint2 @logout
    Esquema do Cenário: Atualizar perfil

    Dado que estou atutenticado com "<email>" e "<senha>" 
    E que acesso o meu perfil
    Quando completo o meu cadastro com "<empresa>" e "<cargo>"
    Então devo ver a mensagem de atualização cadastral:
    """
    Perfil atualizado com sucesso.
    """ 

     Exemplos:
      | email                  | senha      | empresa   | cargo      | 
      | rsaron_nat@hotmail.com | 123456     | Yahoo     | Developer  | 
      | vinicius@teste.com.br  | automacao  | Google    | QA         | 
      | natalia@teste.com.br   | senha1     | Microsoft | CEO        | 
      | natany@yahoo.com       | teste2     | Linkedin  | CTO        |
      | eduardo@hotmail.com    | eu1234     | Facebook  | Estagiario | 
 
                
                  
               
            