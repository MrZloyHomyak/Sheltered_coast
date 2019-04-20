Rails.application.routes.draw do
  resources :todos
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'projects#index'
  get 'todos' => 'todos#index'
  get 'projects' => 'projects#index'
end
