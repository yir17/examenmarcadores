Rails.application.routes.draw do
  resources :bookmarcks
  resources :categories
  resources :bookinds
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
