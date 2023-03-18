Rails.application.routes.draw do
  root 'panel#index'
  namespace :admin do
    resources :users
    resources :aulas
    resources :asignaturas
    resources :calificaciones

    root to: 'users#index'
  end
  devise_for :users
end
