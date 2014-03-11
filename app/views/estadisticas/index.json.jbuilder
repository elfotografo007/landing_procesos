json.array!(@estadisticas) do |estadistica|
  json.extract! estadistica, :id, :url, :hits
  json.url estadistica_url(estadistica, format: :json)
end
