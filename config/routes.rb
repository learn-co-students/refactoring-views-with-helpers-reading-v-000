Rails.application.routes.draw do
  resources :authors
  get 'test/index'

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
end
