Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'resultats/index'
      get 'resultats/show'
      get 'votes/index'
      get 'votes/show'
      get 'scrutins/index'
      get 'scrutins/show'
      get 'candidats/index'
      get 'candidats/show'
      get 'formations_politiques/index'
      get 'formations_politiques/show'
      get 'communes/index'
      get 'communes/show'
      get 'departements/index'
      get 'departements/show'
      get 'regions/index'
      get 'regions/show'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
