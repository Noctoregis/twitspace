Rails.application.routes.draw do
  resources :likes
  resources :comments
  devise_for :users
  get 'welcome/index' => 'welcome#index'

  resources :tweets, only: [:show] do
    resources :comments, only: [:create]
    resources :likes, only: [:create]
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
