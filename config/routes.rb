Rxngif::Application.routes.draw do
  root "pictures#index"

  # If we want to name a logout URL, we can do:

  # get "/logout" => "sessions#signout", as: "logout"

  # And Rails will, behind the scenes, do something like:

  # def logout_url
  #   return "http://localhost:3000/logout"
  # end

  # CREATE
  get "photos/new" => "pictures#new", as: "new_picture" # Display a form for a new picture
  post "photos" => "pictures#create", as: "pictures" # Receives the new form data and adds a row

  # READ
  get "photos" => "pictures#index" # Display a list of pictures
  get "photos/:id" => "pictures#show", as: "picture" # Display the details of one picture

  # UPDATE
  get "photos/:id/edit" => "pictures#edit", as: "edit_picture"
  patch "photos/:id" => "pictures#update"

  # DELETE
  delete "photos/:id" => "pictures#destroy"


  # CREATE
  get "users/new" => "users#new" # Display a form for a new user
  post "users" => "users#create" # Receives the new form data and adds a row

  # READ
  get "users" => "users#index" # Display a list of users
  get "users/:id" => "users#show" # Display the details of one user

  # UPDATE
  get "users/:id/edit" => "users#edit"
  patch "users/:id" => "users#update"

  # DELETE
  delete "users/:id" => "users#destroy"
end







