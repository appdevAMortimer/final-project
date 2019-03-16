Rails.application.routes.draw do
  # define homepage
  root "planner#options"
  
  # using the planner
  get("/pick_restaurant", {:controller => "planner", :action => "choose_restaurant"})
  get("/pick_recipe", {:controller => "planner", :action => "choose_recipe"})
  #CRUD For Recipes
  get("/recipes", { :controller => "recipes", :action => "index" })
  
  
  #CRUD For Ingredientss
  
  #CRUD For Restaurants
  get("/restaurants", { :controller => "restaurants", :action => "index"})
  
  
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
