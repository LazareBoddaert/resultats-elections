Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :resultats, only: %i[index show]
      resources :votes, only: %i[index show]
      resources :scrutins, only: %i[index show]
      resources :candidats, only: %i[index show]
      resources :formations_politiques, only: %i[index show]
      resources :communes, only: %i[index show]
      resources :departements, only: %i[index show]
      resources :regions, only: %i[index show]
    end
  end
end
