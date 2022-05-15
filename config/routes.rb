Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'begin', to: 'pages#begin'
  get 'payement', to: 'pages#payement'
  resources :boxes, path: :capsules
  resources :receivers
  resources :locations
  resources :packages, path: :pricings
  resources :timesheets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
