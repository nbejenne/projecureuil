Rails.application.routes.draw do
  devise_for :users
  root to: 'albums#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :albums do
    resources :invitations, only: [:create, :index]
    resources :pictures, only: [:new, :create, :show, :destroy], shallow: true do
      resources :reactions, only: [:create, :destroy]
    end
  end
end
