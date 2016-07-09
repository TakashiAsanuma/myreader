Rails.application.routes.draw do

  root :to => 'login#index'

  #get 'login/index'
  #get 'feed/index'

  #devise_for :users
  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  resources :feed, :only => [:index]

  resources :config, :only => [:index]

end