Rxngif::Application.routes.draw do
  root "pictures#index"

  get "/favorites" => "pictures#favorites"

  resources :pictures
  resources :videos
end


















