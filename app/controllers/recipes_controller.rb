class RecipesController < ApplicationController
  
  def new
    @recipe = Recipe.new
    @ingredients = Ingredient.all
  end

  def create
    @recipe = Recipe.new(recipe_params)
    puts "==============================================="
    puts @recipe
    if @recipe.save
      redirect_to @recipe
    else
      render 'new'
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @ingredients = @ingredients = Ingredient.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def update
    @recipe = Recipe.find(params[:id])
    
      @recipe.update(recipe_params)

      if @recipe.valid?
        redirect_to recipe_path(@recipe)
      else
        render :edit
      end

  end
  def recipe_params
    params.require(:recipe).permit(:name, ingredient_ids:[])
  end
end
