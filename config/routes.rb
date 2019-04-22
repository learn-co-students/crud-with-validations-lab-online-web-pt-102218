Rails.application.routes.draw do
  resources :songs, only: [:edit, :update, :show,:new, :create, :index, :delete]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
