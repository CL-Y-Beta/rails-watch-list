Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/", to: "list#home", as: 'root'
  get 'lists', to: "list#list", as: 'all_lists'
  get 'lists/new', to: "list#new", as: "new_list"
  get 'list/:id', to: "list#show", as: 'list'
  post 'lists', to: "list#create"

  # bookmarks
  get 'lists/:id/bookmarks/new', to: 'bookmark#new', as: 'bookmark'
  post 'lists/:id/bookmarks', to: 'bookmark#create', as: 'create_bookmark'
  delete 'bookmarks/:id', to: 'bookmark#destroy', as: 'bookmark_destroy'

end
