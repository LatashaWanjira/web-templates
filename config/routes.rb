Rails.application.routes.draw do

  root to: 'home#index'

  devise_for :admins

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :sites do
    resources :images, :only => [:create, :destroy]
  end

  resources :blogposts

  resources :jobs

  resources :contacts

  get 'tags/:tag', to: 'sites#index', as: :tag

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
