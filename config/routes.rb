Rails.application.routes.draw do
  get 'test/index'
  get 'authors/show'
  #get 'authors/:id', to: 'authors#show'
  #resources :authors, only:[:show]
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

end
