Rails.application.routes.draw do
  #get "/",  controller: "movies", action: "index" 

  #resources :directors #this generates all the seven routes below for directors then go to /info/routes to check the routes.

  #get "/"=> "movies#index"
  root "movies#index"
  # Routes for the Movie resource:

  # CREATE
  post "/movies" => "movies#create", as: :movies #movies_url and movies_path

  get "/movies/new" => "movies#new" , as: :new_movies #new_movie_url and new_movie_path
          
  # READ
  get "/movies" => "movies#index"
  get "/movies/:id" =>"movies#show", as: :movie #movie_path() (expects an arguement to populate :id segment).
  
  # UPDATE
  patch "/movies/:id" =>"movies#update"
  get "/movies/:id/edit" => "movies#edit", as: :edit_movie #edit_movie_path() (expects an arguement to populate :id segment).
  
  # DELETE
  delete "/movies/:id" => "movies#destroy"

  #------------------------------
end
