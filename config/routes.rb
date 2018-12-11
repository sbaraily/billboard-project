Rails.application.routes.draw do
  devise_for :users
  root 'tops#index'

  resources :tops

  resources :artists do
    resources :songs
  end

end
