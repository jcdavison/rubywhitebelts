Rubywhitebelts::Application.routes.draw do
  
  
  match '/auth/:provider/callback', to: 'sessions#create'
  match '/sign_out', to: 'sessions#destroy'
  resources :belts 
  root :to => 'sessions#new'

end
