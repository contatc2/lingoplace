Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: %i[index show]
  resources :jobs do
    resources :reviews, only: %i[index show new create]
  end
end
