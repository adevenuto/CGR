Chicagogolfreview::Application.routes.draw do

  devise_for :users

  root 'pages#index'
  resources :courses do
    resources :reviews, :only => :create
  end
end
