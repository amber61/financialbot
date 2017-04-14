Rails.application.routes.draw do
  get 'sessions/new'

  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/quiz',    to: 'static_pages#quiz'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get  '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  mount Messenger::Engine, at: "/messenger"

  resources :contacts, only: :create
  resources :users
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
end
