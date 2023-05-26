
  Rails.application.routes.draw do
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    # Defines the root path route ("/")
    # root "articles#index"
    resources :lists, only: [:index, :show, :new, :create] do
      resources :bookmarks, only: [:new, :create]
    end
    resources :bookmarks, only: %i[destroy]

    root to: 'lists#index'

    match "/404", :to => "errors#not_found", :via => :all

  end
