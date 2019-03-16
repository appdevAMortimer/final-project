class RecipesController < ApplicationController
    def index
        render("/recipe_templates/index.html")
    end
end