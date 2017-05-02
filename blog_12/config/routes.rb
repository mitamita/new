Rails.application.routes.draw do
  devise_for :users
  get 'tags/:tag', to: 'posts#index', as: :tag
  resources :users
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'posts#index'
end
