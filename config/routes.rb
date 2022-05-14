Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :boxes
  resources :receivers
  resources :locations
  resources :packages
  resources :timesheets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
