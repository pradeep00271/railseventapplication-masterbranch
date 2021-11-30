Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  devise_for :users, :controllers => { :registrations => 'registrations' }
  resources :events do
    put 'event_status'
    resources :comments
    resources :address,module: :events
  end
  resources :users do
    resources :address,module: :users
  end
  get 'users/index'
  #get 'home/index'
  get 'home/about'
  get 'home/weekly'


  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
