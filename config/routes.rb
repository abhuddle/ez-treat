Rails.application.routes.draw do
  devise_for :users
  root 'site#index'
  get 'dashboard' => 'dashboard#index'
  resources :samples
  get 'towers' => 'samples#towers'
  resources :reports
  get 'data/:id' => 'reports#data'
end
