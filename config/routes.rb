Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  resources :items, only: [:new, :index, :edit, :create, :update, :show ]do
  end
end