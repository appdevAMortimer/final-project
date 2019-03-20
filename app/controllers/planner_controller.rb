class PlannerController < ApplicationController
    def options
        render("planner_templates/home.html.erb")
    end
    def choose_restaurant
        # choose random restaurant from restaurant database
        restaurants = Restaurant.all
        @choice = restaurants.sample
        render("/planner_templates/chosen_restaurant.html.erb")
    end
    def choose_recipe
        recipes = Recipe.all
        @choice = recipes.sample
        render("/planner_templates/chosen_recipe.html.erb")
    end
    
end