Rails.application.routes.draw do
  get 'artists/index'
  get 'artists/create'
  get 'artists/show'
  get 'songs/index'
  get 'songs/create'
  get 'songs/show'
  get 'tops/index'
  get 'tops/create'
  get 'tops/show'
  root 'tops#index'

  resources :tops
end
