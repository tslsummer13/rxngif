Rxngif::Application.routes.draw do
  root "pictures#index"

  # CREATE
  get "pictures/new" => "pictures#new" # Display a form for a new picture
  get "create_picture" => "pictures#create" # Receives the new form data and adds a row

  # READ
  get "pictures" => "pictures#index" # Display a list of pictures
  get "pictures/:id" => "pictures#show" # Display the details of one picture

  # UPDATE
  get "pictures/:id/edit" => "pictures#edit"
  get "pictures/:id/update" => "pictures#update"

  # DELETE
  get "pictures/:id/delete" => "pictures#destroy"
end







