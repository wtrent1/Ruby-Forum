Rails.application.routes.draw do
  root to: 'pages#home'
  get 'questions', to: 'pages#questions'
  get 'careers', to: 'pages#careers'
  resources :contacts, only: :create
  get 'contact-me', to: 'contacts#new', as: 'contact_me'
end
