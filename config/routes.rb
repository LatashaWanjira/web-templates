Rails.application.routes.draw do
  get 'contacts/index'

  root to: 'home#index'
  
  devise_for :admins
  devise_for :users

  resources :categories do
    resources :sites
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
