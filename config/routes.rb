Rails.application.routes.draw do
  devise_for :users
  resources :artists do
    resources :artist_comments,  only: [:create, :destroy]
    resources :artist_favorites,  only: [:create, :destroy]
  end
  resources :events do
    resources :event_comments, only: [:create, :destroy]
  end
  resources :event_comments, only: [:create, :destroy]do
    resource :event_favorites,  only: [:create, :destroy]
  end
  resources :mains, only: [:index]
  resources :users, :only => [:index, :show,:edit,:update]
  resources :messages, :only => [:create]
  resources :rooms, :only => [:create, :show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'search' => 'searches#search', as: "search"
end
