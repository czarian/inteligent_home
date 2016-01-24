Rails.application.routes.draw do
  get 'users/index'

  get 'user/index'

  get 'admin/index'
  get 'main/index'

  get '/room/:id', to: 'main#room', as: 'main_room'
  get '/category/:id', to: 'main#category', as: 'main_category'

  devise_for :users

  scope "admin" do
  	resources :users
  	resources :devices
  	resources :room_categories
  	resources :categories
  	resources :rooms	
  end

  
  root 'main#index'
  

end
