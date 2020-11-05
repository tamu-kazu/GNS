Rails.application.routes.draw do
  resources :videos
  devise_for :users
  root to: "posts#index"
  resources :posts do
    resources :comments, only: :create
  end
  resources :users, only: :show

end
