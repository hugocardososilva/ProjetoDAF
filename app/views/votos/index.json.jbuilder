json.array!(@votos) do |voto|
  json.extract! voto, :id, :candidato_id, :eleitor_id, :data
  json.url voto_url(voto, format: :json)
end
