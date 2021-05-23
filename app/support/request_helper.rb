# frozen_string_literal: true

module RequestSpecHelper
  # Auxiliar a testar os jsons das respostas
  def json
    ActiveSupport::JSON.decode(response.body)
  end

  # Auxiliar criando headers de autenticacao do devise token auth
  def authentication_headers
    FactoryBot.create(:admin, password: 'password')
              .create_new_auth_token
  end
end
