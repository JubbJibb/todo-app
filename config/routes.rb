
Rails.application.routes.draw do  
#  resources :todos 
  get 'todos/index',  to: 'todos#index'
  get 'todos/new', to: 'todos#new', as: 'new_todo'
  delete "/todos/:id", to: "todos#destroy", as: "todo" 
  post "/todos", to: "todos#create"
  get "/todos/:id/edit", to: "todos#edit", as: "edit_todo"
  patch "/todos/:id", to: "todos#update"
  root 'todos#index'
end