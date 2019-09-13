Rails.application.routes.draw do
  root to: 'pages#home'
  get 'bio', to: 'pages#bio'
  get 'projects', to: 'pages#projects'
  resources :contacts, only: :create
  get 'contact-me', to: 'contacts#new', as: 'contact_me'
end
