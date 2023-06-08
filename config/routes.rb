Rails.application.routes.draw do
  get 'boxings/index'
  root to: 'boxings#index'
end
