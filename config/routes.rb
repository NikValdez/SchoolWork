Rails.application.routes.draw do
  resources :courses do 
    collection do 
      get :autocomplete
    end
  end

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resource :home, only: [:index]

  root to: "home#index"

  resources :events
  resources :recurring_events
  resources :visitors
  
end

 

