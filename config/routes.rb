Rails.application.routes.draw do
  get 'users/show'
  get 'mains/index'
  devise_for :users
   resources :users, only: [:show, :edit,:update]
 
  resources :artists do
  resources :artist_comments,  only: [:create, :destroy]
  end
  resources :events do
  resources :event_comments, only: [:create, :destroy]
  resources :event_favorites,  only: [:create, :destroy]
  end
  resources :artist_favorites,  only: [:create, :destroy]
  resources :messages, only: [:create ,:destroy]
  resources :rooms, only: [:show, :create]
  resources :mains, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
