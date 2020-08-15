Rails.application.routes.draw do
  namespace :users_backoffice do
    get 'inicio/index'
  end
  namespace :site do
    get 'inicio/index'
  end
  namespace :admins_backoffice, path: :administracao do
    get 'inicio/index'
    resources :admins
  end


  devise_for :admins
  devise_for :users
  root to: 'site/inicio#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
