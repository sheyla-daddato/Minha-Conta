Dado("que estou na tela de Login") do                                        
  @tela_login = LoginScreen.new
  @tela_login.abrir  
end                                                                          
                                                                            
Quando("realizo o login {string}") do |tipo_login|                               
  @tela_login.realizar_login(tipo_login)
end                                                                          
                                                                            
Então("devo visualizar a tela de {string}") do |string|                      
  @tela_login.tela_meu_uso?()
end                                                                          