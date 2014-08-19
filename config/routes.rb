Rails.application.routes.draw do
 root :to =>'home#index'
 resources :users
 resources :venue
 resources :photos

 post '/search' => 'home#search'
 
 get '/login' =>	'session#new'
 post '/login' => 'session#create'
 delete '/login' => 'session#destroy'

  # root 'home#index'
  # post '/search' => 'home#search'

end
