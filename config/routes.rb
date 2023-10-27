Rails.application.routes.draw do
  resources :blogs
  root to: "blogs#index"
  post "/blogs/create/:blog_id", to: "likes#create", as: "blogs_like"
end
