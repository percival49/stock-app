Rails.application.routes.draw do
  delete 'remove_stock/:id', to: 'users#remove_stock', as: 'remove_stock'
  resources :user_stocks, only: [:create]
  devise_for :users
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'
end
