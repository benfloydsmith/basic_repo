Rails.application.routes.draw do
  #SESSIONS
  root 'sessions#index'
  post 'sessions/create' => 'sessions#create'
  delete 'sessions' => 'sessions#logout'
  #USERS
  get 'users' => 'users#index'
  post 'users/create' => 'users#create'
  get 'users/:id' => 'users#show'

  #Network
  get 'networks' => 'networks#index'
  post 'networks/:id' => 'networks#create'
  patch 'networks/:id' => 'networks#update'
  delete 'networks/:id' => 'networks#destroy'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

end
