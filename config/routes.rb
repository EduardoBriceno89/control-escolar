Rails.application.routes.draw do
  root 'panel#index'
  namespace :admin do
      resources :users
      resources :aulas
      resources :asignaturas
      resources :calificaciones

      root to: "users#index"
    end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
