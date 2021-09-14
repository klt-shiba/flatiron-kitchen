Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :ingredients
  resources :recipes

  get '/recipe/:id', to: 'recipes#show'
  get '/recipes', to: 'recipes#index'
  get '/recipes/new', to: 'recipes#new'
  post '/recipes/new', to: 'recipes#create'
  patch '/recipes/:id', to: 'recipes#update'
  get '/recipes/:id/edit', to: 'recipes#edit'

  get '/ingredient/:id', to: 'ingredients#show'
  get '/ingredients', to: 'ingredients#index'
  get '/ingredients/new', to: 'ingredients#new'
  post '/ingredients/new', to: 'ingredients#create'
  patch '/ingredients/:id', to: 'ingredients#update'
  get '/ingredients/:id/edit', to: 'ingredients#edit'

end
