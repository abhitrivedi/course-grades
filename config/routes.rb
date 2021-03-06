Rails.application.routes.draw do
  get 'sessions/new'
  post 'sessions/create'
  get 'sessions/login'
  get 'sessions/logout'
  get 'sessions/welcome'
  get 'authorized', to: 'sessions#page_requires_login'
  resources :enrollments
  resources :courses
  resources :users
  root 'sessions#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
