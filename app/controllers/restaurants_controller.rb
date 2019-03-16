class RestaurantsController < ApplicationController
    def index
        render("/restaurant_templates/index.html.erb")
    end
end