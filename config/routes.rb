Rails.application.routes.draw do
  namespace :front, path: '' do
    get 'join' => 'registrations#new'
    resource :registrations, only: [:create]
    root to: 'pages#top'
  end

  namespace :admin do
    root to: 'pages#top'
  end
end
