Vanrooyen::Application.routes.draw do
  

 get "main_controller/home"
 
 resources :users

  if params[:anonymous].eql?("1") #ordinary user
  root :to => "home#index" #redirect to a page where the user can see their order history, etc..
  else
  root :to => "admin#index"

  devise_for :users, :controllers => {:registrations => "registrations"}

  resources :users
end
