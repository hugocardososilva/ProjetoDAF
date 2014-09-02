json.array!(@eleitors) do |eleitor|
  json.extract! eleitor, :id, :nome, :titulo, :endereco, :telefone
  json.url eleitor_url(eleitor, format: :json)
end
