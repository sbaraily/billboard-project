Rails.application.routes.draw do
  root 'tops#index'

  resources :tops

  resources :artists do
    resources :songs
  end

end
