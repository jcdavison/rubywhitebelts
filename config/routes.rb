Rubywhitebelts::Application.routes.draw do
  
  
  match '/auth/:provider/callback', to: 'sessions#create'
  match '/sign_out', to: 'sessions#destroy'
  match '/the_path', to: 'paths#index'
  match '/progress_belts', to: 'paths#progress'
  # match '/judo_chop', to: 'paths#index'
  # match '/belt', to: 'paths#progress'
  # match '/toggle', to: 'paths#toggle'
  resources :belts 
  root :to => 'sessions#new'

end
