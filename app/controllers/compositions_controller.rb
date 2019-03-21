class CompositionsController < ApplicationController
  def new_form
    @composition = Composition.new
    @recipe = Recipe.find(params["recipe_id"])

    render("composition_templates/new_form.html.erb")
  end

  def create_row
    @composition = Composition.new

    @composition.quantity = params.fetch("quantity")
    @composition.recipe_id = params.fetch("recipe_id")
    @composition.ingredient_id = params.fetch("ingredient_id")
    @composition.user_id = params.fetch("user_id")
    @composition.unit_of_measure = params["unit_of_measure"]

    if @composition.valid?
      @composition.save

      redirect_back(:fallback_location => "/", :notice => "Composition created successfully.")
    else
      render("composition_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @composition = Composition.find(params.fetch("prefill_with_id"))

    render("composition_templates/edit_form.html.erb")
  end

  def update_row
    @composition = Composition.find(params.fetch("id_to_modify"))

    @composition.quantity = params.fetch("quantity")
    @composition.recipe_id = params.fetch("recipe_id")
    @composition.ingredient_id = params.fetch("ingredient_id")
    @composition.user_id = params.fetch("user_id")
    @composition.unit_of_measure = params["unit_of_measure"]

    if @composition.valid?
      @composition.save

      redirect_to("/recipes/#{@composition.recipe_id}/edit", :notice => "Composition updated successfully.")
    else
      render("composition_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @composition = Composition.find(params.fetch("id_to_remove"))

    @composition.destroy

    redirect_to("/recipes/#{@composition.recipe_id}/edit", :notice => "Composition deleted successfully.")
  end
end
