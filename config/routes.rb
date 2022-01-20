Rails.application.routes.draw do
  resources :auths, only: [:create]
end
