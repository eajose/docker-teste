json.extract! processo_seletivo, :id, :Agenda, :Status, :Lista_candidatos, :Nome_processo, :created_at, :updated_at
json.url processo_seletivo_url(processo_seletivo, format: :json)
