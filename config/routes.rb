Rails.application.routes.draw do
  namespace :api do
    get 'vehicle/all'
    get 'rate/all'
    get 'parking/all'
    get 'entry/all'

  resources :parkings, only: %i[index create update show destroy]do
    end
  resources :rates, only: %i[index create update show destroy]do
    end
  resources :entries, only: %i[index create update show destroy]do
    end
  resources :vehicles, only: %i[index create update show destroy]do
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
  end

