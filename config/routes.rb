Rails.application.routes.draw do
  # get 'lists', to: 'lists#index', as: :index
  # get 'lists/new', to: 'lists#new'
  # get 'lists/:id', to: 'lists#show', as: :list
  # post 'lists', to: 'lists#create'

  # resources :lists do
  #   resources :bookmarks, only: [:new, :create]
  # end
  # resources :bookmarks, only: [:destroy]

  root to: 'lists#index'
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
    #resources :reviews, only: :create
  end
  resources :bookmarks, only: :destroy
  #resources :reviews, only: :destroy
end
