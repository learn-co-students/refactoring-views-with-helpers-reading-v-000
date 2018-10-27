Rails.application.routes.draw do
  get 'authors/:id', to: 'authors#show'

  get 'test/index'

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
end
