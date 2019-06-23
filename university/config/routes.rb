Rails.application.routes.draw do
  get 'welcome/index'
  resources :students
  resources :subjects
  resources :professors
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'students/:id/enroll', to: 'students#enroll'
  post 'subjects/:id/add_student', to: 'subjects#add_student'
end
