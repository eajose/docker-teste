json.extract! candidato, :id, :Login, :Senha, :CPF, :created_at, :updated_at
json.url candidato_url(candidato, format: :json)
