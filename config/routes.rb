Rails.application.routes.draw do
  get 'category/new'

  get 'category/show'

  get 'category/edit'

  get 'category/delete'

  get 'category/index'

  get 'site/new'

  get 'site/show'

  get 'site/edit'

  get 'site/delete'

  get 'site/index'

  resources :categories do
    resources :sites
  end
end
