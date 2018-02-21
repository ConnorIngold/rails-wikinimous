Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'articles', to: 'articles#index'

  get "articles/new", to: "articles#new", as: :new
  post "articles", to: "articles#create"

  get "articles/:id", to: "articles#show", as: :task

  delete "articles/:id", to: "articles#delete"

  get "articles/:id/edit", to: "articles#edit", as: :edit
  patch "articles/:id", to: "articles#update"
end
