Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  resources :appointments, only: [:edit, :update, :show, :destroy] do
  get 'student_appointments', on: :member
  get 'teacher_appointments', on: :member
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :teachers do
    resources :appointments, only: [ :index, :new, :create ]
  end

end
