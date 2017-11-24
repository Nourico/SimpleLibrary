Rails.application.routes.draw do
  get 'users/show'

  resources :books do
    member do
      get :rent
      get :return
    end
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
  resources :users, :only => [:show]
end
