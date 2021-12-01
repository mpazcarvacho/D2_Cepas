Rails.application.routes.draw do
  resources :magazines
  resources :oenologists
  devise_for :users,
  # added to test devise 01/12
    # controllers: {
    #   confirmations: 'confirmations',
    #   passwords: 'passwords',
    #   registrations: 'registrations',
    #   sesssions: 'sessions',
    # }
  resources :wines_strains
  resources :strains
  resources :wines

  root to: 'pages#index'

  # TODO Ping to ensure site is up
  # resources :ping, only: [:index] do
  #   collection do
  #     get :auth
  #   end
  # end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
