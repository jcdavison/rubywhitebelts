Rubywhitebelts::Application.routes.draw do
  
  
  match '/auth/:provider/callback', to: 'sessions#create'
  match '/sign_out', to: 'sessions#destroy'
  resources :belts, :users, :events, :rsvps, :challenges, :completions
  root :to => 'sessions#new'

end
