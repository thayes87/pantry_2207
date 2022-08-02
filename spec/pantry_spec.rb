require './lib/ingredient'
require './lib/pantry'

RSpec.describe Pantry do 
  let(:ingredient1) { Ingredient.new({
    name: "Cheese", unit: "oz", calories: 50
    })}

  let(:ingredient2) { Ingredient.new({
    name: "Macaroni", unit: "oz", calories: 200
    })}
  
  let(:pantry) { Pantry.new }

  it 'exists' do 
    expect(pantry).to be_instance_of(Pantry)
  end

  it 'can be stocked' do 
    expect(pantry.stock).to eq({})
  end
  
  it 'can check current stock' do
    expect(pantry.stock_check(ingredient1)).to eq(0)
  end

  it 'can restock pantry' do
    pantry.restock(ingredient1, 5)
    pantry.restock(ingredient1, 10)
    expect(pantry.stock_check(ingredient1)).to eq(15)

    pantry.restock(ingredient2, 7)

    expect(pantry.stock_check(ingredient2)).to eq(7)
  end
end