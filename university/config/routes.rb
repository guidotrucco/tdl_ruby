Rails.application.routes.draw do
  resources :students
  resources :subjects
  resources :professors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
