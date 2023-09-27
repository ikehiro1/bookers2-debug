Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  get 'homes/top'
  get '/search', to: 'searches#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  root to: "homes#top"
  get "home/about" => "homes#about"
  
  resource :favorites, only: [:create, :destroy]
  resources :books, only: [:index, :show, :edit, :create, :destroy, :update] do
  resources :book_comments, only: [:create, :destroy]
  end
  
  resources :users do
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end
 
  resources :users, only: [:index,:show,:edit,:update]
  resources :books, only: [:index,:show,:edit,:create,:destroy,:update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end