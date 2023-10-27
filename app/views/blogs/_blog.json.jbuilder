json.extract! blog, :id, :body, :likes, :created_at, :updated_at
json.url blog_url(blog, format: :json)
