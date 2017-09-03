Rails.application.routes.draw do
  resources :lists
# RESTful convention in rails that generates the seven RESTful routes
# > rake routes 

  root 'lists#index'
  # site controller, can be augmented later


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
