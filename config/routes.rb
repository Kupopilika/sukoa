Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :games, only: [:new, :create] do
    resources :players, only: [:new, :create]
    get "/editscore", to: "players#editscore", as: :edit_players
    patch "/editscore/:player_id", to: "players#updatescore", as: :updatescore
  end
end
