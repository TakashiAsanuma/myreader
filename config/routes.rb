Rails.application.routes.draw do

  root :to => 'login#index'

  #devise_for :users
  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  resources :feed, only: [:index]

  resources :config, only: [:index] do
    get '/choise', action: :choise, on: :collection
    get '/add',    action: :add,    on: :collection
  end

  resource :myreads, only: [:edit, :update]
end
