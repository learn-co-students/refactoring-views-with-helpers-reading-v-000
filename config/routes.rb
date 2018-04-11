Rails.application.routes.draw do
  get 'authors/show'


  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

end
