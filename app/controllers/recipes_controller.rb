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
    #
    @recipe.user_id = get_current_user.id
    #get_current_user.id == params[:id].to_i
    #@recipe.user_id = params[:user_id]

    if @recipe.save
      render json: @recipe, status: :created, location: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipes/1
  def update
    if @recipe.update(recipe_params) and @recipe.user_id == get_current_user.id
      render json: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipes/1
  def destroy
    if @recipe.user_id == get_current_user.id
      @recipe.destroy
      render json: {status: 200, message: "DELETED"}
    else
      render json: {status: 401, message: "You don't have permission to delete a recipe that isn't yours!"}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recipe_params
      params.require(:recipe).permit(:title, :ingredients, :description, :directions, :servings, :img, :user_id)
    end
end
