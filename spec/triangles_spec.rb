require 'rspec'
require 'triangles'

describe Triangle do
  it "creates a new instance in the triangle class" do
    test_triangle = Triangle.new(1, 2, 3)
    expect(test_triangle).to be_an_instance_of Triangle
  end

  it "identifies if the sides equal an equilateral triangle" do
    test_triangle = Triangle.new(3,3,3)
    expect(test_triangle.triangle_type).to eq('equilateral')
  end

  it "returns scalene if no sides are equal" do
    test_triangle = Triangle.new(2,3,4)
    expect(test_triangle.triangle_type).to eq('scalene')
  end

  it "returns isoceles if only two sides are equal" do
    test_triangle = Triangle.new(2,2,3)
    expect(test_triangle.triangle_type).to eq('isoceles')
  end

  it "returns not a triangle if one of the sides is longer than the other two combined" do
    test_triangle = Triangle.new(10,3,4)
    expect(test_triangle.triangle_type).to eq('not a triangle')
  end
end
