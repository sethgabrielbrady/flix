Rails.application.routes.draw do
  resources :users
  resources :reviews
  get 'signup' => 'users#new'
  
  root "movies#index"

  resources :movies do
    resources :reviews
  end
end
