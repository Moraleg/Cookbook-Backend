Rails.application.routes.draw do

    #resources :recipes #do
      #collection do
        #get "/", to: "recipes#index"
      #end
    #end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    resources :recipes
    #adding as a collection because we do not want a paremeter set for all with just one member
    collection do
      post "/login", to: "users#login"
        end
    end
end
