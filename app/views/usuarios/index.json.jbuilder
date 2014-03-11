json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nombre, :telefono, :ciudad, :correo
  json.url usuario_url(usuario, format: :json)
end
