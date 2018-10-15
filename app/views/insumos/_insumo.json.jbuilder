json.extract! insumo, :id, :tipo, :preco, :descricao, :latitude, :longitude, :icone, :foto, :created_at, :updated_at
json.url insumo_url(insumo, format: :json)
