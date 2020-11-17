Rails.application.routes.draw do
  root 'articles#index'
  resources :articles do
    resources :votes
  end
  resources :categories

  resource :session, only: [:new, :create, :destroy]
  get 'signin' => 'sessions#new'

  resources :users
  get 'signup' => 'users#new'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
