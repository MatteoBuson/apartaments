Rails.application.routes.draw do
  resources :apartaments
  
 get '/articles', to:'articles#index'
 root 'articles#index'
end
