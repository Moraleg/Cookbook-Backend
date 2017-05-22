class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]

  # GET /recipes
  def index
    all_recipes = Recipe.all

    render json: { recipes: all_recipes, status: 200 }
  end

  # GET /recipes/1
  def show
    one_recipe = Recipe.find(params[:id])

    render json: { recipes: one_recipe, status: 200 }
  end

  # POST /recipes
  def create
    @recipe = Recipe.new(recipe_params)
    #nested routes
    @recipe.user_id = params[:user_id]

    if @recipe.save
      render json: @recipe, status: :created, location: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipes/1
  def update
    if @recipe.update(recipe_params)
      render json: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipes/1
  def destroy
    @recipe.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recipe_params
      params.require(:recipe).permit(:title, :ingredients, :description, :directions, :servings, :img)
    end
end
