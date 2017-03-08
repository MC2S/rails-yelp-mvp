Rails.application.routes.draw do
  get '/restaurants', to: "restaurants#index"

  get '/restaurants/new', to: "restaurants#new"

  post '/restaurants', to: "restaurants#create"

  get '/restaurants/:id', to: "restaurants#show", as: :restaurant

  get '/restaurants/:id/edit', to: "restaurants#edit", as: :edit_restaurant

  patch '/restaurants/:id', to: "restaurants#update"

  delete '/restaurants/:id', to: "restaurants#destroy", as: :delete_restaurant

  get '/restaurants/:restaurant_id/reviews/new', to: "review#new", as: :new_restaurant_review

  post '/restaurants/:restaurant_id/reviews', to: "review#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


