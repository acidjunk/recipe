class RecipesController < ApplicationController
  before_action :signed_in_user

  def create
    @recipe = current_user.recipes.build(micropost_params)
    if @recipe.save
      flash[:success] = 'Recipe created!'
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  private

  def recipe_params
    params.require(:recipe).permit(:content)
    #Todo add name also
  end
end