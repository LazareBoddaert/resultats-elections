Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :resultats, only: %i[index show create]
      resources :votes, only: %i[index show create]
      resources :scrutins, only: %i[index show create]
      resources :candidats, only: %i[index show create]
      resources :formations_politiques, only: %i[index show create]
      resources :communes, only: %i[index show create]
      resources :departements, only: %i[index show create]
      resources :regions, only: %i[index show create]
    end
  end
end
