Rails.application.routes.draw do
  root to: 'restaurants#index'
  resources :restaurants, only: [:index, :show, :new, :create] do |variable|
    resources :reviews, only: [:new, :create]
  end
end
