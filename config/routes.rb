Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Define the root:
  root 'posts#index', as: 'home'

  # Define normal routes:
  get 'about' => 'pages#about', as: 'about'

  # Define Resources: Maps HTTP verbs to controller actions:
  resources :posts

end
