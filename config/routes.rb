Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'main#index'

  resources :bears, only: [:index, :new, :create, :show, :update, :edit, :destroy]

end
