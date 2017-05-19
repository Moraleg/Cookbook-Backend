Rails.application.routes.draw do

    resources :recipes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    #adding as a collection because we do not want a paremeter set for all with just one member
    collection do
      post "/login", to: "users#login"
        end
    end
end
