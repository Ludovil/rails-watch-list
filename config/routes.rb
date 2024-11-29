Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'lists/index'
  get 'lists/create'
  get 'lists/new'
  get 'lists/show'
resources :movies, only: [:index, :show]

resources :lists, only: [:index, :show, :new, :create] do
  resources :bookmarks, only: [:new, :create, :destroy]
end

resources :bookmarks, only: [:destroy]

end
