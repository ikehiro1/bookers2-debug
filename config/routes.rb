Rails.application.routes.draw do
  get 'homes/top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  root to: "homes#top"
  get "home/about" => "homes#about"
  
  resource :favorites, only: [:create, :destroy]
  resources :books, only: [:index, :show, :edit, :create, :destroy, :update] do
  resources :book_comments, only: [:create, :destroy]
  end
 
  resources :users, only: [:index,:show,:edit,:update]
  resources :books, only: [:index,:show,:edit,:create,:destroy,:update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end