Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :nations, only: %i[index show create]
      resources :resultats_communes, only: %i[index show create]
      resources :resultats_candidats, only: %i[index show create]
      resources :scrutins, only: %i[index show create]
      resources :candidats, only: %i[index show create]
      resources :formations_politiques, only: %i[index show create]
      resources :communes, only: %i[index show create]
      resources :departements, only: %i[index show create]
      resources :regions, only: %i[index show create]
    end
  end
end
