Rails.application.routes.draw do
  devise_for :users
  get 'boxings/index'
  root to: 'boxings#index'
end
