Rails.application.routes.draw do

  get 'admin/index'

  root 'posts#index'

  get '/post/:slug', to: 'posts#show', as: 'show_post'
  get '/category', to: 'categories#index', as: 'category_index'
  get '/category/:slug', to: 'categories#show', as: 'show_category'
  get '/dashboard', to: 'admin#index', as: 'admin_dashboard'

end
