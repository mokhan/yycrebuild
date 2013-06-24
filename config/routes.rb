Yycrebuild::Application.routes.draw do
  root :to => 'needs#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users

  resources :needs, :only => [:index, :show, :create]
  resources :neighbourhoods, :only => [:index]
  resources :resources
  resources :links, :only => [:index, :create], :path => :l
  resources :tags, :only => [:show], :path => :t
end
