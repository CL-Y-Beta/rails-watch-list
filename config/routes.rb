Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'lists', to: "list#index"
  get 'lists/new', to: "list#new"
  get 'list/:id', to: "list#show", as: 'list'
  post 'lists', to: "list#create"

  # bookmarks
  get 'lists/:id/bookmarks/new', to: 'bookmark#new', as: 'bookmark'

end
