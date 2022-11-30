Rails.application.routes.draw do
  devise_for :users
<<<<<<< HEAD
  root to: "pages#index"
  resources :appointments
=======
  root to: "pages#home"
>>>>>>> master
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :teachers do
    resources :appointments, only: [ :new, :create ]
  end

end
