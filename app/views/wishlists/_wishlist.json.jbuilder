json.extract! wishlist, :id, :album_name, :created_at, :updated_at
json.url wishlist_url(wishlist, format: :json)
