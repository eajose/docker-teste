json.extract! curriculo, :id, :Nome_Completo, :Data_Nascimento, :RG, :CPF, :Email, :Telefone, :Logradouro, :Cidade, :Estado, :UF, :CEP, :Formacao, :Curso_Complementar, :ExpProfissional, :created_at, :updated_at
json.url curriculo_url(curriculo, format: :json)
