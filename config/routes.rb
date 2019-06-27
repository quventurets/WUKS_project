Rails.application.routes.draw do
  get '/career' => "career#index"
  get '/transfer' => "transfer#index"

  get '/transfer/:id' => "transfer#show", as: :transfer_show




  
  get '/login' => "login#login"  
  resources :univs
  root 'top#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
