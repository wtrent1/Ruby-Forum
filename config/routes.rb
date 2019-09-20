Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # get 'questions', to: 'pages#questions'
  get 'careers', to: 'pages#careers'
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'contact_us'
  resources :posts
  get 'questions', to: 'posts#index', as: 'questions'
end
