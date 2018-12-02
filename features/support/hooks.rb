# REGEX ou Expressão Regular
# contém => *
# termina com => $
# começa com => ^

Before do
    @nav = Navbar.new
    @side = Sidebar.new
    @login_page = LoginPage.new
    @tarefas_page = TarefasPage.new
    @perfil_page = PerfilPage.new
    @cadastro_page = CadastroPage.new

    page.current_window.resize_to(1100, 700)
end

Before('@login') do 
    @usuario = {email: 'tasha@papito.io', senha: '123456'}

    @login_page = LoginPage.new
    @login_page.acessa 
    @login_page.logar(@usuario[:email], @usuario[:senha])
    
end

After ('@logout') do
    @nav = Navbar.new
    @nav.sair
end

After do |cenario|
    nome = cenario.name.gsub(/[^A-Za-z0-9 ]/, '')
    nome = nome.tr(' ', '_').downcase!
    shot = "log/screenshots/#{nome}.png"

    page.save_screenshot(shot)
    embed(shot, 'image/png', 'Ta aqui o print')
end