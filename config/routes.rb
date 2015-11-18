Rails.application.routes.draw do
  devise_for :users
  
  get '/users' => 'users#index', as: :users
  get '/users/:id' => 'users#show', as: :user
  
  root to: 'welcome#index'
  
  resources :tweets#, :path => "posts"
  
end
