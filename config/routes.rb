Rails.application.routes.draw do
 root :to =>'home#index'
 resources :users
 resources :venue
 resources :photos

 
 get '/login' =>	'session#new'
 post '/login' => 'session#create'
 

  # root 'home#index'
  post '/search' => 'home#search'

end
