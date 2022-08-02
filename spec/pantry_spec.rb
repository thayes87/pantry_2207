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
end