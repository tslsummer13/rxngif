Rxngif::Application.routes.draw do
  root "pictures#index"
  get "pictures" => "pictures#index"
  get "pictures/new" => "pictures#new"
  get "pictures/:id" => "pictures#show"
  get "create_picture" => "pictures#create"
end
