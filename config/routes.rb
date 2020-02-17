Rails.application.routes.draw do
  resources :dewormings
  resources :vaccines
  resources :pets
  get 'home/index'
  devise_for :owners, controllers: {registrations: 'owners/registrations'}
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
