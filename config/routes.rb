Rails.application.routes.draw do

  get 'dashboard/index'
  get 'dashboard/blog_posts'
  root 'blogs#index'
  get 'home/index'

  resources :blogs
  resources :categories
  resources :comments


  devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations',
      passwords: 'users/passwords'
  }

  mount Ckeditor::Engine => '/ckeditor'
end
