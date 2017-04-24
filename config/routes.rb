Rails.application.routes.draw do

  # get 'sites/index'

  # get 'sites/show'

  # get 'sites/new'

  # get 'sites/edit'

  # get 'categories/index'

  # get 'categories/show'

  # get 'categories/new'

  # get 'categories/edit'

  root to: 'home#index'

  devise_for :admins
  devise_for :users

  resources :categories do
    resources :sites
  end

  resources :sites

  # resources :sites

  resources :contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
