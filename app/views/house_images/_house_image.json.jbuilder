json.extract! house_image, :id, :url, :section_id, :tags, :score, :created_at, :updated_at
json.url house_image_url(house_image, format: :json)
