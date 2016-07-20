require('spec_helper')

describe(Ingredient) do
  it('validate the presence of a ingredient') do
    ingredient = Ingredient.new({:ingredient => ""})
    expect(ingredient.save()).to(eq(false))
  end
  it('ensure the lenth of an ingredient name is at most 40 characters') do
    ingredient = Ingredient.new({:ingredient => "a".*(41)})
    expect(ingredient.save()).to(eq(false))
  end
end
