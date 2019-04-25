class LoginScreen
    include Capybara::DSL
    IDs_TELA_LOGIN = {
        'campo cpf' => 'cpf',
        'campo senha' => 'password',
        'continuar' => '#loginSemParar'
    }

   def abrir()
       visit "https://minhaconta.semparar.com.br/MinhaConta/#/login"
   end

   def realizar_login(tipo_login)
       preencher_cpf(tipo_login)
       preencher_senha(tipo_login)
       continuar()
   end

   def preencher_cpf(tipo_login)
    fill_in IDs_TELA_LOGIN['campo cpf'], with: CREDENCIAIS['login'][tipo_login]
   end

   def preencher_senha(tipo_login)
    fill_in IDs_TELA_LOGIN['campo senha'], with: CREDENCIAIS['senha'][tipo_login]
   end
    
   def continuar()
    find(IDs_TELA_LOGIN['continuar']).click
   end

   def tela_meu_uso?()
    expect(page).to have_content ‘Meu Extrato’
    
   end
end