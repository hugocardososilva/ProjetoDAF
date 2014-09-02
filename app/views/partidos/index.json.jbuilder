json.array!(@partidos) do |partido|
  json.extract! partido, :id, :numero, :nome, :sigla
  json.url partido_url(partido, format: :json)
end
