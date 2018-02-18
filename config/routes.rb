Rails.application.routes.draw do
  get 'test/index'
  get '/authors/:id', to: 'authors#show'
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]



end
