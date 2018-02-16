Rails.application.routes.draw do

  root 'todos#index'

  get 'todos/index', to: 'todos#index'

  get 'todos/new'

  get 'todos/new', to: 'todos#new'


end
