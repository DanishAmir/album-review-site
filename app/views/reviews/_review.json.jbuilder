json.extract! review, :id, :stars, :thoughts, :created_at, :updated_at
json.url review_url(review, format: :json)
