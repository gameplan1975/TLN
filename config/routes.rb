Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :questions
  resources :users
  resources :genres
  resources :players
  root to: "players#top"
end
