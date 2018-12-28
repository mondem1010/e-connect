Rails.application.routes.draw do

  devise_for :users
  resources :users, :only => [:index, :show,:edit,:update]
  resources :artists do
    resources :artist_comments,  only: [:create, :destroy]
  end
  resources :artist_comments,  only: [:create, :destroy]do
    resources :artist_favorites,  only: [:create, :destroy]
  end
  resources :events do
    resources :event_comments, only: [:create, :destroy]
  end
  resources :event_comments, only: [:create, :destroy]do
    resource :event_favorites,  only: [:create, :destroy]
  end
  resources :mains, only: [:index]
  resources :messages, :only => [:create]
  resources :rooms, :only => [:create, :show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :check, :only =>[:index]
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
end
