json.extract! wines_strain, :id, :wine_id, :strain_id, :percentage, :created_at, :updated_at
json.url wines_strain_url(wines_strain, format: :json)
