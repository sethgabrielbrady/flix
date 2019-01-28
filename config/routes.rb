Rails.application.routes.draw do
  resources :favorites
  resources :users
  resources :reviews
  resource :session

  get "signin" => "sessions#new"
  get 'signup' => 'users#new'

  root "movies#index"

  resources :movies do
    resources :reviews
    resources :favorites
  end
end
