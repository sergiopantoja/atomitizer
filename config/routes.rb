Rails.application.routes.draw do

  resources :clips
  devise_for :users
  root to: "pages#home"

end
