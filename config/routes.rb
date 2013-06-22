Yycrebuild::Application.routes.draw do
  resources :needs
  root :to => 'needs#index'
end
