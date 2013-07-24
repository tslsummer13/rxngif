Rxngif::Application.routes.draw do
  root "pictures#index"

  resources :pictures
  resources :videos
end


















