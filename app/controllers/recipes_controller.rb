class RecipesController < ApplicationController
    before_action :set_recipe, only [:edit,:update]
  
    def index
      @recipes=Recipes.all
    end
  
    def new
        @recipe=Recipe.new
    end
  
    def create
      recipe = Recipe.new
  
      if recipe.save
        redirect_to recipe_path
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      @recipe.update(recipe_params)
  
      if @recipe.save
        redirect_to recipie_path
    end
  
    private
  
    def set_recipe
      @recipe=recipe.find(params[:id])
    end
  
    def recipe_params
      params.require(:recipe).permit(:name)
    end
  
    end
  end