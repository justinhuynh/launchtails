Rails.application.routes.draw do
  root 'categories#index'
  devise_for :users

  resources :categories, except: [:edit, :update, :destroy] do
    resources :drinks, except: [:edit, :update, :destroy]
  end

  resources :drinks, only: [:index, :show]
end
