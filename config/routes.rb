Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :movies, except: [:edit, :update, :destroy] do
  #   resources :reviews, only: [:create, :new]
  resources :lists, except: [:edit, :update, :destroy] do
    resources :bookmarks, only: [:new, :create ]
  end
  resources :bookmarks, only: :destroy
end
