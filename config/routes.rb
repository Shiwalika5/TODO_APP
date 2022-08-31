Rails.application.routes.draw do
  resources :bubbles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'
  resources :todos, only: [:show, :index , :new , :create, :destroy]
 


end
