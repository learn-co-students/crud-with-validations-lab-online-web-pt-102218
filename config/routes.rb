Rails.application.routes.draw do
  resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/songs/:id", to: "songs#show", as: "post"
  get "/songs/:id/edit", to: "songs#edit", as: "edit_post"
  patch "/songs/:id", to: "songs#update"
  get "/songs/:id", to: "songs#show"
  get "/songs/index", to: "songs#index"

end
