Rails.application.routes.draw do

  devise_for :users
  root to: "homes#top"

  resources :books, only: [:new, :index, :show, :edit, :create, :update, :destroy]
  resources :users, only: [:new, :create, :show, :edit, :index, :update]
  post '/users/:id', to: 'books#create', as: 'create_book'
  
  get 'home/about' => 'homes#about', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
