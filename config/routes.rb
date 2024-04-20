Rails.application.routes.draw do
  root 'publicacions#index'
  resources :publicacions

end