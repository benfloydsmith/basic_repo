Rails.application.routes.draw do
  #SESSIONS
  root 'sessions#index'
  post 'sessions/create' => 'sessions#create'
  delete 'sessions' => 'sessions#destroy'
  #USERS
  post 'users/create' => 'users#create'
  get 'users/:id' => 'users#show'
  #FRIENDS
  get 'friends' => 'friends#index'
  post 'friends/create' => 'friends#create'
  delete 'friends/:id' => 'friends#destroy'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

end
