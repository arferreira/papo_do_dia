Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
 
  root 'blog#index'

  get 'blog/index'

  get 'blog/posts'

  resources :posts
  resources :categories
  resources :authors
  

end
