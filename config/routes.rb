Rails.application.routes.draw do
  namespace :front, path: '' do
    root to: 'pages#top'
  end

  namespace :admin do
    root to: 'pages#top'
  end
end
