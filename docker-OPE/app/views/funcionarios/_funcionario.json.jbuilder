json.extract! funcionario, :id, :Codigo, :Nome, :Departamento, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)
