json.extract! album, :id, :title, :description, :artist, :year, :created_at, :updated_at
json.url album_url(album, format: :json)
