Rails.application.routes.draw do
  root to: "quotations#index"
  resources :quotations, only: [:index, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
