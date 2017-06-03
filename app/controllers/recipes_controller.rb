class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]

  # GET /recipes
  def index
    @recipes = Recipe.all

    render json: @recipes
  end

  # GET /recipes/1
  def show
    render json: @recipe
  end

  # POST /recipes
  def create

    #need to verify creation only happens if logged in


    @recipe = Recipe.new(recipe_params)
    #
    @user = get_current_user
    @recipe.user_id = @user.id
    #@recipe.user_id = get_current_user
    #get_current_user.id == params[:id].to_i
    #@recipe.user_id = params[:user_id]

    if @recipe.save
      render json: @recipe, status: :created,
      location: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipes/1
  def update
    @user = get_current_user
    if @recipe.update(recipe_params) and @recipe.user_id == @user.id
      render json: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipes/1
  def destroy
    if @recipe.user_id == @user.id
      @recipe.destroy
      render json: {status: 200, message: "DELETED"}
    else
      render json: {status: 401, message: "You don't have permission to delete a recipe that isn't yours!"}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find_by_id(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recipe_params

      params.require(:recipe).permit(:id, :user_id, :title, :ingredients, :description, :directions, :servings, :img)

    end
end
