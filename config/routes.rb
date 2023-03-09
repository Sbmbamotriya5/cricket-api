Rails.application.routes.draw do
  # get 'indian_team/index'
  # get 'indian_team/show'
  # get 'indian_team/create'
  # get 'indian_team/update'
  # get 'indian_team/delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "indian_team#index"
   resources :indian_team ,only: [:index,:show,:create,:update,:destroy]
end
