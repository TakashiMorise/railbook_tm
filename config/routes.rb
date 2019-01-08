Rails.application.routes.draw do
  resources :books
  get 'hello/index',to: 'hello#index'
  get 'hello/view' => 'hello#view'
  get 'hello/list', to: 'hello#list'
end
