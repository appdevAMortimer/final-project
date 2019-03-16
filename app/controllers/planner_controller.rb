class PlannerController < ApplicationController
    def options
        render("planner_templates/home.html.erb")
    end
    def choose_restaurant
        # choose random restaurant from restaurant database
        render("/planner_templates/chosen_restaurant.html.erb")
    end
    def choose_recipe
        render("/planner_templates/chosen_recipe.html.erb")
    end
    
end