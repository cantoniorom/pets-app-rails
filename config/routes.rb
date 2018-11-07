Rails.application.routes.draw do
    get '/', to: "pets#home"
    get '/pets', to: "pets#index", as: "pets"
    get '/pets/new', to: "pets#new", as: "new_pet"
    get '/pets/:id', to: "pets#show", as: "pet"
    post '/pets', to: "pets#create"
    get '/pets/:id/edit', to: "pets#edit"
    patch '/pets/:id', to: "pets#update"
 
    end
    
