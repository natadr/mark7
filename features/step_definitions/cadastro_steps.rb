Dado("que eu estou no formulário de cadastro") do
    @login_page.acessa
    @cadastro_page.acessa_cadastro
  end
  
  Quando("faço o meu cadastro com {string} , {string} e {string}") do |nome_cad, email_cad, senha_cad|
    @cadastro_page.preenche_cadastro(nome_cad, email_cad, senha_cad)
  end
 
  
Então("vejo a mensagem {string}") do |mensagem_cad|
    @tarefas_page = TarefasPage.new
    expect(@tarefas_page.painel).to have_content mensagem_cad
  end

  Então("vejo a mensagem de aviso {string}") do |mensagem_cad_alert|
    expect(@cadastro_page.alerta).to have_content mensagem_cad_alert
  end