Rails.application.routes.draw do

 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :recipes
<<<<<<< HEAD
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :recipes
    # do
    #   resources :users
    # end
=======

  resources :users do
    #adding as a collection because we do not want a paremeter set for all with just one member
    collection do
      post "/login", to: "users#login"
    end
  end

>>>>>>> 69a90c16ccd5c545512fe145042b138b3b05de4f
end
