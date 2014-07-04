json.array!(@caballos) do |caballo|
  json.extract! caballo, :id, :sexo, :record, :age, :nombre, :precio
  json.url caballo_url(caballo, format: :json)
end
