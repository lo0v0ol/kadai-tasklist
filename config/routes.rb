Rails.application.routes.draw do
  root to: 'tasks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
 get 'login', to: 'sessions#new'
 post 'login', to: 'sessions#create'
 delete 'logout', to: 'user#destroy'
 
 get 'signup', to: 'tasks#new'
 resources :tasks
end
