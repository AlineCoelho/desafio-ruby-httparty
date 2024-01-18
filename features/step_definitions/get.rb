Dado('que o usuário consulte a lista de usuários cadastrados') do
    @get_url = 'https://serverest.dev/usuarios'
  end
  
  Quando('realizar a pesquisa') do
    @list_users = HTTParty.get(@get_url)
  end
  
  Então('deve ser exibida a lista de usuários cadastrados') do
    expect(@list_users.code).to eql 200
    expect(@list_users.message).to eql 'OK'
  end