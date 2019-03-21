class PlannerController < ApplicationController
    def options
        render("planner_templates/home.html.erb")
    end
    def choose_restaurant
        # choose random restaurant from restaurant database
        restaurants = Restaurant.where(:user_id => current_user.id)
        @choice = restaurants.sample
        render("/planner_templates/chosen_restaurant.html.erb")
    end
    def choose_recipe
        # choose random recipe from user's curated list
        recipes = Recipe.where(:user_id => current_user.id)
        @choice = recipes.sample
        render("/planner_templates/chosen_recipe.html.erb")
    end
    
end