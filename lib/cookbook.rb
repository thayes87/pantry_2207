class CookBook
  attr_reader :recipes
  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end
  
  def ingredients 
    ingredients = recipes.map do |recipe|
      recipe.ingredients_required.map do |ingredient|
        ingredient[0].name
      end
    end
    ingredients.flatten.uniq
  end

  def highest_calorie_meal
    recipes.map do |recipe|
      recipe.total_calories 
    end
    
  end
end