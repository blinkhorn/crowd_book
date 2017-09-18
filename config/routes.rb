Rails.application.routes.draw do
  root to: 'users#index'
  root to: 'venues#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    resources :requests
  end

  resources :venues do
    resources :requests
  end

end
