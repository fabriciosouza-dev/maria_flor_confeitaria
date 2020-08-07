Rails.application.routes.draw do
  namespace :users_backoffice do
    get 'inicio/index'
  end
  devise_for :users
  namespace :site do
    get 'inicio/index'
  end
  namespace :admins_backoffice do
    get 'inicio/index'
  end

  devise_for :admins

  root to: 'site/inicio#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
