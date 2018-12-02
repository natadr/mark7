
class CadastroPage
    include Capybara::DSL

    def acessa_cadastro
        find('.panel-body')
        find('a[href*=register]').click
    end 

    def alerta
        find('form[id=register_form]')
    end

    def preenche_cadastro(nome_cad, email_cad, senha_cad)
        find('#register_name').set nome_cad
        find('#register_email').set email_cad
        find('#register_password').set senha_cad
        click_button 'Cadastrar'
    end
end

