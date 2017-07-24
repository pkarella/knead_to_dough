Rails.application.routes.draw do
  root :to => 'courses#index'
     resources :courses do
      resources :reviews, :except => [:show, :index]
    end
end
