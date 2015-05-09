Rails.application.routes.draw do
  namespace :front, path: '' do
    get 'join' => 'registrations#new'
    resource :registrations, only: [:create]
    get 'login' => 'sessions#new'
    resource :sessions, only: [:create, :destroy]
    resources :articles, only: [:index, :new, :edit, :update, :destroy]
    resources :users, only: [:index, :show]
    root to: 'pages#top'
  end

  namespace :admin do
    root to: 'pages#top'
  end
end
