Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root :to => 'courses#index'
     resources :courses do
      resources :reviews, :except => [:show, :index]
    end
end
