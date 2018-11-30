Rails.application.routes.draw do
  get 'tops/index'
  get 'tops/create'
  get 'tops/show'
  get 'artists/index'
  get 'artists/create'
  get 'artists/show'
  get 'songs/index'
  get 'songs/create'
  get 'songs/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
