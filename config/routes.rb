Rails.application.routes.draw do
  namespace :front, path: '' do
    get 'join' => 'registrations#new'
    resource :registrations, only: [:create]
    get 'login' => 'sessions#new'
    resource :sessions, only: [:create, :destroy]
    root to: 'pages#top'
  end

  namespace :admin do
    root to: 'pages#top'
  end
end
