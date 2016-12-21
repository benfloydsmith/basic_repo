Rails.application.routes.draw do
  #SESSIONS
  root 'sessions#index'
  post 'sessions/create' => 'sessions#create'
  delete 'sessions' => 'sessions#logout'
  #USERS
  post '/users/create' => 'users#create'
  get 'users/:id/edit' => 'users#edit'
  patch 'users/:id' => 'users#update'
  #THEATERS
  get 'theaters' => 'theaters#index'
  get 'theaters/:id' => 'theaters#show'
  #MOVIES
  get 'movies' => 'movies#index'
  get 'movies/:id' => 'movies#show'
  post 'movies/create' => 'movies#create'
  delete 'movies/:id' => 'movies#destroy'
  #ATTEND
  post 'attends/create' => 'attends#create'
  delete 'attends/:id' => 'attends#destroy'
  #STARS
  post 'stars/create' => 'stars#create'
  


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

 
end
