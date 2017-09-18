Rails.application.routes.draw do


  namespace :admin do
    root to: "venues#show"
  end

  root to: 'users#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    resources :requests
  end

  resources :venues do
    resources :requests
  end

end
