json.extract! post, :id, :nome, :descricao, :created_at, :updated_at
json.url post_url(post, format: :json)
