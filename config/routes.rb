Chicagogolfreview::Application.routes.draw do

  root 'pages#index'
  resources :courses

end
