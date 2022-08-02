class Recipe
  attr_reader :name, :ingredients_required
  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
  end

  def add_ingredient(ingredient, quantity)
    @ingredients_required[ingredient] += quantity
  end

  def ingredients
    ingredients_required.map do |ingredient, quantity|
      ingredient
    end
  end

  def total_calories
    recipe_calories = ingredients_required.map do |ingredient, quantity|
      ingredient.calories * quantity
    end
    recipe_calories.sum 
  end
end
