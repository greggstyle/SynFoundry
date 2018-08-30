Rails.application.routes.draw do
  get 'contact/index'
  root to: 'pages#home'
  # root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'about',           to: 'pages#about',           as: :about
  get 'contact',         to: 'pages#contact',         as: :contact
  get 'construction',    to: 'pages#construction',    as: :construction

  resources :contact, only: [:index, :new, :create]
end
