Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Verb 'URL', to: 'controller#action'
  # get = go to / fetch
  # post = create
  # patch = update
  # destroy = delete

  # Fetches all the available tasks
  get 'tasks', to: 'tasks#index'

  # Creating a new task
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'

  # Fetches a specific task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Editting existing task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch'tasks/:id', to: 'tasks#update'

  # Deleting exisitng task
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete_task
end
