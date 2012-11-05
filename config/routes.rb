Rubywhitebelts::Application.routes.draw do
  
  get "belts/index"

  match '/auth/:provider/callback', to: 'sessions#create'
  match '/sign_out', to: 'sessions#destroy'
  match '/judo_chop', to: 'paths#index'
  resources :belts
  root :to => 'sessions#new'

end
