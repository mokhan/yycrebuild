Yycrebuild::Application.routes.draw do
  devise_for :users

  resources :needs
  resources :neighbourhoods
  root :to => 'needs#index'
end
