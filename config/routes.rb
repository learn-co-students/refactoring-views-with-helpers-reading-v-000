Rails.application.routes.draw do
  get 'authors/show'
  get 'authors/new'

  get 'test/index'
  resources :authors

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
end
