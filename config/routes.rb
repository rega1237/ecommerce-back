Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :products, only: [:index, :show, :create, :update, :destroy] do
    resources :comments, only: [:show, :create, :update, :destroy]
  end
end
