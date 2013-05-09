Todo::Application.routes.draw do
  get "sessions/new"

  get "users/new"

  resources :posts do
	resources :comments
  end

#  get "home/index"
  get "about" => "home#about"
  get "contact" => "home#contact"
 
   root :to => 'home#index'

get "log_out" => "sessions#destroy", :as => "log_out"
get "log_in" => "sessions#new", :as => "log_in"
get "sign_up" => "users#new", :as => "sign_up"
root :to => "users#new"
resources :users
resources :sessions

end
