Rails.application.routes.draw do
  resources :lists do
    resources :bookmarks, only: [:show, :new, :create]
  end

  resources :bookmarks, only: [:destroy]

  get "up" => "rails/health#show", as: :rails_health_check
end
