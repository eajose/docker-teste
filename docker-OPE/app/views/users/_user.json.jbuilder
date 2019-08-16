json.extract! user, :id, :Nome_Completo, :Idade, :CPF, :Data_de_Nascimento, :created_at, :updated_at
json.url user_url(user, format: :json)
