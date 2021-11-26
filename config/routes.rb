Rails.application.routes.draw do
  resources :oenologists
  devise_for :users
  resources :wines_strains
  resources :strains
  resources :wines

  root to: 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
