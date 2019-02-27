Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: %i[index show] do
    resources :interpreter_languages, except: %i[show destroy]
  end
  resources :jobs do
    resources :reviews, only: %i[index show new create]
  end
end
