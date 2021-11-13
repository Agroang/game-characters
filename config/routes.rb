Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # games : list all, display 1, new, create, edit, update, destroy
  # character : list all, show 1, new, create, edit, update, destroy
  # skill : list all, show 1, new, create, edit, update, destroy
  # gain : new, create, destroy

  resources :games do
    resources :characters, only: [:new, :create]
  end

  resources :characters, only: [:destroy]

  resources :characters do
    resources :gains, only: [:new, :create]
  end

  resources :gains, only: [:destroy]
end
