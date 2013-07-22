Rxngif::Application.routes.draw do
  root "pictures#index"

  # CREATE
  get "pictures/new" => "pictures#new" # Display a form for a new picture
  post "pictures" => "pictures#create" # Receives the new form data and adds a row

  # READ
  get "pictures" => "pictures#index" # Display a list of pictures
  get "pictures/:id" => "pictures#show" # Display the details of one picture

  # UPDATE
  get "pictures/:id/edit" => "pictures#edit"
  patch "pictures/:id" => "pictures#update"

  # DELETE
  delete "pictures/:id" => "pictures#destroy"
end







