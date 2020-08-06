Rails.application.routes.draw do
  devise_for :profiles
  devise_for :admins
  get 'inicio/index'

  root to: 'inicio#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
