Rails.application.routes.draw do

  root 'posts#index'

  get '/post/:slug', to: 'posts#show', as: 'show_post'

end
