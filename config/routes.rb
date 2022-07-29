Rails.application.routes.draw do
  root to: 'admin#index'

  namespace :admin do
    resources :todos
  end

  namespace :admin do
    resources :photos
  end

  namespace :admin do
    resources :albums
  end

  namespace :admin do
    resources :comments
  end

  namespace :admin do
    resources :posts
  end

  namespace :admin do
    resources :users
  end

  # get 'admin/new'
  # get 'admin/show'
  # get 'admin/edit'
  # get 'admin/create'
  # get 'admin/update'
  # get 'admin/destroy'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
