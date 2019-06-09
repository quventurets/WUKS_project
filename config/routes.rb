Rails.application.routes.draw do
  get '/career' => "career#top"
  get '/transfer' => "transfer#top"
  
  
  resources :users
  root 'top#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
