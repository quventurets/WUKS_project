Rails.application.routes.draw do
  namespace :admin do
      resources :univs

      root to: "univs#index"
    end
  get '/career' => "career#index"
  get '/transfer' => "transfer#index"
  get '/tansfer/:id' => "transfer#show"
  get '/transfer/test' => "transfer#test"
  
  get '/login' => "login#login"
  
  resources :univs

  root 'top#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
