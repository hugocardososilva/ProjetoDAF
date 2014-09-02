json.array!(@candidatos) do |candidato|
  json.extract! candidato, :id, :numero, :nome, :partido_id
  json.url candidato_url(candidato, format: :json)
end
