Rails.application.routes.draw do

  devise_for :users

  resources :pictures, only: [:index, :create, :new, :edit, :show, :update, :destroy]

  root 'top#index'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

end
