Rails.application.routes.draw do
  namespace :front, path: '' do
    resource :registrations, only: [:create]
    get 'join' => 'registrations#new'
    root to: 'pages#top'
  end

  namespace :admin do
    root to: 'pages#top'
  end
end
