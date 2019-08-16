json.extract! formacao, :id, :Nome_curso, :Nome_instituicao, :Data_inicio, :Data_formacao, :created_at, :updated_at
json.url formacao_url(formacao, format: :json)
