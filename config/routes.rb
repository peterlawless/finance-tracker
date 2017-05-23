Rails.application.routes.draw do
  # this line allows us to use a custom controller for registrations
  devise_for :users, :controllers => { :registrations => 'user/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stocks', to: 'stocks#search'
  resources :user_stocks, except: [:show, :edit, :update]
  resources :users, only: [:show]
  resources :friendships
  get 'my_friends', to: 'users#my_friends'
end
