Rails.application.routes.draw do
  root 'tests#index'
  resources :tests, only: [:show, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
