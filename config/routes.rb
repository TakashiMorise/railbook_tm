require 'time_constraint'

Rails.application.routes.draw do
  resources :fan_comments
  # resources :reviews, path_names: { new: :insert, edit: :revise }
  resources :authors
  resources :users, controller: :reviews
  resources :books do
    resources :reviews, shallow: true
  end
  resource  :config
  namespace :admin do
    resources :pens
  end
  get 'hello/index',to: 'hello#index'
  get 'hello/view' => 'hello#view'
  get 'hello/list', to: 'hello#list'
end
