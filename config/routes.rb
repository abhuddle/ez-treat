Rails.application.routes.draw do
  devise_for :users
  root 'site#index'
  get 'dashboard' => 'dashboard#index'
  resources :samples
end
