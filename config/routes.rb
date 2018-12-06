Rails.application.routes.draw do
  root 'tops#index'
  resources :tops do
    resources :artists do
      resources :songs
    end
  end
end
