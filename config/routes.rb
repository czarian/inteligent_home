Rails.application.routes.draw do
  get 'admin/index'

  devise_for :users
  resources :devices
  resources :room_categories
  resources :categories
  resources :rooms
  root 'main#index'
  get 'main/index'

end
