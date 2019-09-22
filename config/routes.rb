Rails.application.routes.draw do

  root 'blogs#index'
  get 'home/index'

  resources :blogs
  resources :categories
  resources :comments


  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }

  mount Ckeditor::Engine => '/ckeditor'
end
