Rails.application.routes.draw do
  root 'tops#index'

  resources :tops, :artists, :songs

end
