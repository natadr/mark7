
class TarefasPage
    include Capybara::DSL

    def painel
        find('#task-board')
    end

    def buscar_tr(nome)
        tr = find('#tasks tbody tr', text: nome)
    end

    def buscar_trs
        all('#tasks tbody tr')
    end

    def mensagem_aviso
        find('.alert-warn').text
    end

    def cadastrar(nome, data_f)
        find('#insert-button').click

        within('#add-task') do 
            fill_in 'title', with: nome
            fill_in 'dueDate', with: data_f
            click_on 'Cadastrar'
        end
    end

    def pesquisa_tarefa(nome)
        find('#search-input').set nome
        find('#search-button').click
    end
    
    def solicita_remocao(nome)
        tr = buscar_tr(nome)
        tr.find('#delete-button').click
    end

    def confirma_modal
        modal.find('button', text: 'Sim').click
    end

    def nao_confirma_modal
        modal.find('button[data-bb-handler=danger]').click
    end

    def modal
        find('.modal-content')
    end

    def voltar
        click_link 'Voltar' if page.has_css?('#add-task')
    end
end


# click_link para elemento a (link)
# click_button para elemento button (botão)
# click_on para todos (span, div, tabel, tr, hr, etc...)

