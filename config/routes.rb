Rails.application.routes.draw do

  get 'dashboard/index'
  get 'dashboard/blog_posts'
  get 'dashboard/new_blog_post'
  get 'dashboard/form_and_components'
  get 'dashboard/tables'
  get 'dashboard/user_profile'
  get 'dashboard/errors'


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
