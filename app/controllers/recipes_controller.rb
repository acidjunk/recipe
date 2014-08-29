class RecipesController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: [:edit, :update, :destroy]

  def index
    @recipes = Recipe.paginate(page: params[:page])
  end

  def create
    @recipe = current_user.recipes.build(recipe_params)
    if @recipe.save
      flash[:success] = 'Recept geplaatst!'
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def edit
  end

  def update
    if @recipe.update_attributes(recipe_params)
      flash[:success] = 'Recipe bijgewerkt'
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @recipe.destroy
    redirect_to root_url
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name,:content,:picture)
  end

  def correct_user
    @recipe = current_user.recipes.find_by(id: params[:id])
    redirect_to root_url if @recipe.nil?
  end

end