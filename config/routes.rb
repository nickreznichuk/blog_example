Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root "posts#index"


  resources :posts do
    resources :comments
  end
  resources :categories do
    resources :categories_comments
  end
end
