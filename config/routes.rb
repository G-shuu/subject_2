Rails.application.routes.draw do

  resources :pictures, only: [:index, :create, :new, :edit, :show, :update, :destroy]

  root 'top#index'

end
