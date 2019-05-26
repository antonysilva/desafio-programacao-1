Rails.application.routes.draw do
	devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }

  root 'uploads#new'

  resources :uploads, only: [:new, :create]

  get '/uploads', to: redirect('/uploads/new')
end
