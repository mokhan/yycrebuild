Yycrebuild::Application.routes.draw do
  root :to => 'needs#index'
  #devise_for :admin_users, ActiveAdmin::Devise.config
  #ActiveAdmin.routes(self)

  devise_for :users

  resources :needs
  resources :neighbourhoods
  resources :tags, :only => [:show], :path => :t
end
